import { Router } from "express";
import express from "express";
import categoriesController from "../controllers/categories.js";

const categoriesRouter = express.Router();

categoriesRouter.get("/", categoriesController.index);

categoriesRouter.post("/categorySlug", categoriesController.show);

export default categoriesRouter;