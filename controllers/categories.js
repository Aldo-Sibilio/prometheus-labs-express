import { response } from "express";


async function index(request, response) {
    const querySelect = `
        SELECT name, slug 
        FROM categories`
        ;

    try {
        const results = await connection.execute(querySelect);
        if (results[0].length === 0) {
            return response.status(404)
                .json({ result: null, error: 404 });
        }
        return response.status(200)
            .json({ result: results[0], error: null });
    } catch (error) {

    }

    response.status(200)
        .json({
            error: null,
            results: rows
        })
}

async function show(request, response) {
    const { categoriesSlug } = request.params;
    const querySelect = `
            SELECT name, slug 
            FROM categories 
            WHERE slug = ?
            LIMIT 1
        `;

    try {
        const [result] = await connection.execute(querySelect, [categoriesSlug]);

        if (result.length === 0) {
            return response.status(404)
                .json({ result: null, error: 404 });
        }
        return response.status(200)
            .json({ result: result[0], error: null });

    } catch (error) {
        return { result: null, error: 500 };
    }
}

const categoriesController = {
    index,
    show
}

export default categoriesController;