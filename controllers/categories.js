import connection from "../data/db.js";
import { validateSlug } from "../utils_js/validation/validateSlug.js";

async function index(request, response) {
    const querySelect = `
        SELECT name, slug 
        FROM categories`
        ;

    try {
        const [results] = await connection.execute(querySelect);
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
    const { categorySlug } = request.params;
    const validatedCatSlug = validateSlug(categorySlug);
    console.log("slugcat val: ", validatedCatSlug);
    
    const querySelect = `
            SELECT name, slug 
            FROM categories 
            WHERE slug = ?
            LIMIT 1
        `;

    try {
        const [results] = await connection.execute(querySelect, [categorySlug]);

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

const categoriesController = {
    index,
    show
}

export default categoriesController;