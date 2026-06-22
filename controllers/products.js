import connection from "../data/db.js";
import { validateSlug } from "../utils_js/validation/validateSlug.js";
import queries from "../utils_js/queries/queries.js";

async function index(request, response) {
    // per ora la query è una stringa di placeholder, da fixare quando abbiamo real db connection
    try {
        const [rows] = await connection.execute(queries.querySelectAllProducts);
        if (!rows || rows.length === 0) {
            return response.status(404)
                .json({
                    results: null,
                    error: 'nessun prodotto trovato a database!'
                });
        }
        return response.status(200)
            .json({
                results: rows,
                error: null
            });
    } catch (error) {
        console.error('errore durante il recupero dei prodotti:', error);

        return response.status(500)
            .json({
                results: null,
                error: 'errore interno del server nel recuperare i prodotti'
            });
    }
}

async function show(request, response) {
    const { slug: productSlug } = request.params; // valutare con Simo se spostare in un middleware validateSlug
    const realSlug = validateSlug(productSlug);
    console.log('lo slug del prodotto:', realSlug); // riga per check funzionamento da console

    try {
        const [ rows ] = await connection.execute(queries.querySelectProductBySlug, [realSlug]);

        if (!rows || rows.length === 0) {
            return response.status(404)
                    .json({
                        results: null,
                        error: `Il database non presenta alcun prodotto con slug ${realSlug}!`
                    });
        }

        return response.status(200)
                .json({
                    results: rows,
                    error: null
                });

    } catch (error) {
        return response.status(500)
                .json({
                    results: null,
                    error: `errore interno del server nel recuperare il prodotto con slug ${realSlug}`
                });
    }
}

const productsController = {
    index, show
};

export default productsController;