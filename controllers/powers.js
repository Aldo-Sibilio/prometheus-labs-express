

async function index(request, response) {
    const querySelect = `
    SELECT name power_type, id
    FROM powers
    `;

    try {
        const results = await connection.execute(querySelect);
        if (results.length === 0) {
            return response.status(404)
                .json({
                    result: null,
                    error: 404
                });
        }
        return response.status(200)
            .json({
                result: results,
                error: null
            });
    } catch (error) {
        return response.status(500)
            .json({
                result: null,
                error: 500
            });
    }
}

async function show(request, response) {
    const { powerId } = request.params;
    const querySelect = `
            SELECT name, id, power_type
            FROM powers 
            WHERE id = ?
            LIMIT 1
        `;

    try {
        const [results] = await connection.execute(querySelect, [powerId]);

        if (results.length === 0) {
            return response.status(404)
                .json({
                    result: null,
                    error: 404
                });
        }
        return response.status(200)
            .json({
                result: results[0],
                error: null
            });
    } catch (error) {
        return response.status(500)
            .json({
                result: null,
                error: 500
            });
    }
}

const powersController = {
    index,
    show
}

export default powersController;