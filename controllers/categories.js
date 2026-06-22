import connection from "../data/db.js";
import { validateSlug } from "../utils_js/validation/validateSlug.js";
import queries from "../utils_js/queries/queries.js";

async function index(request, response) {

    try {
        const [results] = await connection.execute(queries.querySelectAllCategories);
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

    try {
        const [results] = await connection.execute(queries.querySelectCategoriesBySlug, [categorySlug]);

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