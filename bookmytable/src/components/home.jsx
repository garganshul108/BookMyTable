import React, { Component } from "react";
import "./css/home.css";
import img from "./images/bann.jpg";
class Home extends Component {
  state = {};

  render() {
    return (
      <div className="container-fluid">
        <div className="homeTab">
          <img src={img} />
          <input
            id="cityInput"
            className="form-control"
            type="search"
            placeholder="Search"
            aria-label="Search"
          />
        </div>
      </div>
    );
  }
}

export default Home;
