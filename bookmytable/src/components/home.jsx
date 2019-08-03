import React, { Component } from "react";
import "./css/home.css";
import img from "./images/banner-bg-1.jpg";
class Home extends Component {
  state = {};

  render() {
    return (
      <div className="container-fluid">
        <img width="100%" src={img} alt="ASAS" />
        <div id="homeTab">
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
