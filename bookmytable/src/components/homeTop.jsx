import React, { Component } from "react";
import "./css/home.css";
import img from "./images/HomeTab.jpg";
import { Link } from "react-router-dom";
class HomeTop extends Component {
  state = {};

  render() {
    return (
      <div className="homeTab">
        <div className="row no-gutters">
          <div className="col">
            <div className="homeContent">
              <div className="dummy" />
              <div className="container">
                <div className="row">
                  <div className="col-7">
                    <h3 className="title">BookMyTable.com</h3>
                  </div>
                  <div className="col-5">
                    <div className="userButtons">
                      <Link
                        className="btn btn-danger buttons"
                        onClick={this.props.openLogin}
                      >
                        <small>
                          <span className="text text-default">
                            <i className="fa fa-user" aria-hidden="true" />
                          </span>
                          &nbsp;&nbsp;Login
                        </small>
                      </Link>
                      <Link
                        className="btn btn-warning  buttons"
                        onClick={this.props.openSignUp}
                      >
                        <small>
                          <span className="text text-default">
                            <i className="fa fa-sign-out" aria-hidden="true" />
                          </span>
                          &nbsp;&nbsp;Sign Up
                        </small>
                      </Link>
                    </div>
                  </div>
                </div>
                <div className="row">
                  <div className="dummy" />
                </div>
                <div className="row">
                  <div className="col desc">
                    <big>Hungry KYA?</big>
                    <small className="text text-muted">
                      What about a table in the restaurant near you?
                    </small>
                  </div>
                </div>
                <div className="row searchBox">
                  <div className="col">
                    <form class="form-inline">
                      <input
                        class="form-control mr-sm-2"
                        type="search"
                        placeholder="Your City"
                        aria-label="Search"
                      />
                      <button class="btn btn-info my-2 my-sm-0" type="submit">
                        FIND PLACES
                      </button>
                    </form>
                  </div>
                </div>
                <div className="row">
                  <div className="col desc">
                    <small className="text text-muted">
                      <p>Popular Cities</p>

                      <strong>
                        <a>Delhi</a>
                        <a>KolKata</a>
                        <a>Gurgaon</a>
                      </strong>
                    </small>
                  </div>
                </div>
              </div>
            </div>
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
