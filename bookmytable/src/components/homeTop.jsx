import React, { Component } from "react";
import "./css/home.css";
import img from "./images/HomeTab.jpeg";
class HomeTop extends Component {
  state = {};

  render() {
    return (
      <div className="container-fluid homeTab">
        <div className="row">
          <div className="col">Name</div>
          <div className="col-5">
            <img src={img} alt="" />
          </div>
        </div>
        <div
          className="row"
          style={{ width: "100%", height: "150px", backgroundColor: "black" }}
        >
          kk
        </div>
      </div>
    );
  }
}

export default HomeTop;
