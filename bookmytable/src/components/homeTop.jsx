import React, { Component } from "react";
import "./css/home.css";
import img from "./images/HomeTab.jpg";
class HomeTop extends Component {
  state = {};

  render() {
    return (
      <div className="homeTab">
        <div className="row no-gutters">
          <div className="col">
            <div className="homeContent">h1</div>
          </div>
          <div className="col-7">
            <img src={img} alt="" />
          </div>
        </div>
        <div className="row no-gutters">
          <div
            className="col"
            style={{ height: "300px", background: "black" }}
          />
        </div>
      </div>
    );
  }
}

export default HomeTop;
