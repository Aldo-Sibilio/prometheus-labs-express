import express from "express";
import categoriesRouter from "./routers/categories.js";
import powersRouter from "./routers/powers.js";
import notFound from "./middlewares/notFound.js";
import errorHandler from "./middlewares/errorHandler.js";

const port = process.env.SERVER_PORT || 3000;

const app = express();

app.use(express.static('public'));
app.use(express.json());

app.use("/categories", categoriesRouter);
app.use("/powers", powersRouter);

app.get("/", (request, response) => {
    response.json({
        message: 'il server funziona correttamente'
    })
});

app.use(notFound);
app.use(errorHandler);


app.listen(port, (error) => {
    if (error) {
        console.error(error.message);
        return;
    }
    console.log('server in ascolto a questa porta: ', port);
})