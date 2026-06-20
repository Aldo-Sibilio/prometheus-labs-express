import { Router } from "express";
import express from "express";
import powersController from "../controllers/powers.js";

const powersRouter = express.Router();

powersRouter.get("/", powersController.index);

powersRouter.post("/powerId", powersController.index);

export default powersRouter;