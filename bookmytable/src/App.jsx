import React, { Component } from "react";
import NaviagtionBar from "./components/navigationBar";
import Home from "./components/home";

class App extends Component {
  render() {
    console.log("My App");
    return (
      <div className="container-fluid">
        <div className="row">
          <div className="col">
            <NaviagtionBar />
          </div>
        </div>
        <div className="row">
          <div className="container">
            <Home />
          </div>
        </div>
      </div>
    );
  }
}

export default App;
