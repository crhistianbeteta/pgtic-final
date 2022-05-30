import logo from "./logo.svg";
import "./App.css";
import Products from "./products/products";

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <Products></Products>
      </header>
    </div>
  );
}

export default App;
