import connection from "../data/db.js";
import validateNumber from "../utils_js/validation/validateNumber.js";

async function index(request, response) {
    const query = `
        SELECT id, guest_email, total_amount, created_at,
        guest_name, guest_surname, city, country
        FROM orders
        ORDER BY created_at DESC
    `;

    try {
        const [results] = await connection.execute(query);

        if (results.length === 0) {
            return response.status(404).json({ result: null, error: 404 });
        }

        return response.status(200).json({ result: results, error: null });

    } catch (error) {
        return response.status(500).json({ result: null, error: 500 });
    }
}

async function show(request, response) {
    const { orderId } = request.params;
    const validatedId = validateNumber(orderId);

    if (!validatedId) {
        return response.status(400).json({ result: null, error: 400 });
    }

    const queryOrder = `
        SELECT *
        FROM orders
        WHERE id = ?
        LIMIT 1
    `;

    const queryItems = `
        SELECT op.product_id, op.quantity, op.price_at_purchase,
        p.name, p.slug
        FROM order_products op
        JOIN products p ON p.id = op.product_id
        WHERE op.order_id = ?
    `;

    try {
        const [[order]] = await connection.execute(queryOrder, [orderId]);

        if (!order) {
            return response.status(404).json({ result: null, error: 404 });
        }

        const [items] = await connection.execute(queryItems, [orderId]);

        return response.status(200).json({
            result: { ...order, items },
            error: null
        });

    } catch (error) {
        return response.status(500).json({ result: null, error: 500 });
    }
}

async function store(request, response) {
    const {
        guest_email,
        guest_name,
        guest_surname,
        address,
        house_number,
        postal_code,
        city,
        country,
        phone_number,
        items
    } = request.body;

    if (!items || !Array.isArray(items) || items.length === 0) {
        return response.status(400).json({ result: null, error: 400 });
    }

    const now = new Date();

    const conn = await connection.getConnection();

    try {
        await conn.beginTransaction();

        
        const [orderResult] = await conn.execute(
            `
            INSERT INTO orders
            (guest_email, total_amount, created_at, guest_name, guest_surname,
            address, house_number, postal_code, city, country, phone_number)
            VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
            `,
            [
                guest_email,
                0,
                now,
                guest_name,
                guest_surname,
                address,
                house_number,
                postal_code,
                city,
                country,
                phone_number
            ]
        );

        const orderId = orderResult.insertId;

        const productIds = items.map(i => i.product_id);
        const placeholders = productIds.map(() => "?").join(",");

        const [products] = await conn.execute(
            `SELECT id, price_full FROM products WHERE id IN (${placeholders})`,
            productIds
        );

        const priceMap = new Map(products.map(p => [p.id, p.price_full]));

        let totalAmount = 0;

        for (const item of items) {
            const unitPrice = priceMap.get(item.product_id);

            if (!unitPrice) {
                throw new Error("Product not found");
            }

            const lineTotal = unitPrice * item.quantity;
            totalAmount += lineTotal;

            await conn.execute(
                `
                INSERT INTO order_products
                (order_id, product_id, quantity, price_at_purchase)
                VALUES (?, ?, ?, ?)
                `,
                [orderId, item.product_id, item.quantity, unitPrice]
            );
        }

        await conn.execute(
            `UPDATE orders SET total_amount = ? WHERE id = ?`,
            [totalAmount, orderId]
        );

        await conn.commit();

        return response.status(201).json({
            result: { id: orderId, total_amount: totalAmount },
            error: null
        });

    } catch (error) {
        await conn.rollback();
        return response.status(500).json({ result: null, error: 500 });
    } finally {
        conn.release();
    }
}

async function destroy(request, response) {
    const { orderId } = request.params;
    const validatedId = validateNumber(orderId);

    if (!validatedId) {
        return response.status(400).json({ result: null, error: 400 });
    }

    const conn = await connection.getConnection();

    try {
        await conn.beginTransaction();

        await conn.execute(`DELETE FROM order_products WHERE order_id = ?`, [orderId]);
        const [result] = await conn.execute(`DELETE FROM orders WHERE id = ?`, [orderId]);

        await conn.commit();

        if (result.affectedRows === 0) {
            return response.status(404).json({ result: null, error: 404 });
        }

        return response.status(200).json({ result: "deleted", error: null });

    } catch (error) {
        await conn.rollback();
        return response.status(500).json({ result: null, error: 500 });
    } finally {
        conn.release();
    }
}

const ordersController = {
    index,
    show,
    store,
    destroy
};

export default ordersController;
