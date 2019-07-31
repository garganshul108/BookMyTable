import React, { Component } from "react";
import "./css/home.css";

class Home extends Component {
  state = {};

  render() {
    return (
      <div id="homeTab">
        <input
          id="cityInput"
          className="form-control"
          type="search"
          placeholder="Search"
          aria-label="Search"
        />
      </div>
    );
  }
}

export default Home;
