import { Router } from "express";
import express from "express";
import categoriesController from "../controllers/categories";

const categoriesRouter = express.Router();

categoriesRouter.get("/", categoriesController.index);

categoriesRouter.show("/categorySlug", categoriesController.show);

export default categoriesRouter;