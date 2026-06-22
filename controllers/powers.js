import connection from "../data/db.js";
import validateNumber from "../utils_js/validation/validateNumber.js"
import queries from "../utils_js/queries/queries.js";

async function index(request, response) {

    try {
        const [results] = await connection.execute(queries.querySelectAllPowers);
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
    const validatedId = validateNumber(powerId);
    console.log("id val: ", powerId);

    try {
        const [results] = await connection.execute(queries.querySelectPowerById, [powerId]);

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