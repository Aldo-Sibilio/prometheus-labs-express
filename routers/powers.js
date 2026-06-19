import { Router } from "express";
import express from "express";

const powersRouter = express.Router();

powersRouter.get("/", powersController.index);

powersRouter.show("/powerId", powersController.index);

export default powersRouter;