const products = require("./data/products.json");
const express = require("express");
const app = express();
const port = 3000;
const cors = require("cors");

app.use(cors());

app.use(
  cors({
    origin: "*",
  })
);

app.get("/", (req, res) => {
  console.log(req.headers);
  res.send("Hello World!");
});

app.get("/products", (req, res) => {
  console.log("products");
  res.send(products);
});

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});
