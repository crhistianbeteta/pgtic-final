import React, { useEffect, useState } from "react";

export default function Products() {
  const [products, setProducts] = useState([]);
  useEffect(() => {
    console.log("effect");
    const getProducts = async () => {
      let API = process.env.REACT_APP_API;
      console.log("Do request to", API);
      console.log("env", process.env);

      const products = await fetch(`/products`).then((response) =>
        response.json()
      );

      setProducts(products);
    };
    getProducts();
  }, []);
  return <div> {JSON.stringify(products)};</div>;
}
