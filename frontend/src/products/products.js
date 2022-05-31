import React, { useEffect, useState } from "react";

export default function Products() {
  const [products, setProducts] = useState([]);
  useEffect(() => {
    const getProducts = async () => {
      const products = await fetch(`/products`).then((response) =>
        response.json()
      );

      setProducts(products);
    };
    getProducts();
  }, []);

  if (!products || (products && products.length === 0)) {
    return <h1>No products</h1>;
  }
  return (
    <>
      <table>
        <tr>
          <th>Name</th>
          <th>Price</th>
          <th>Detail</th>
        </tr>

        {products.map((listValue, index) => {
          return (
            <tr key={index}>
              <td>{listValue.name}</td>
              <td>{listValue.price}</td>
              <td>{listValue.detail}</td>
            </tr>
          );
        })}
      </table>
    </>
  );
}
