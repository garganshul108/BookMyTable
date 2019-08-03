import React, { Component } from "react";
import { Link, NavLink } from "react-router-dom";

import "../css/navigationBar.css";
class NaviagtionBar extends Component {
  state = {};
  render() {
    return (
      <div className="container-fluid">
        <div className="container-fluid  navBar-design">
          <div className="container">
            <nav className="navbar navbar-expand-lg navbar-dark">
              <Link className="navbar-brand" to="/">
                Book My Table
              </Link>
              <button
                className="navbar-toggler"
                type="button"
                data-toggle="collapse"
                data-target="#navbarNavAltMarkup"
                aria-controls="navbarNavAltMarkup"
                aria-expanded="false"
                aria-label="Toggle navigation"
              >
                <span className="navbar-toggler-icon" />
              </button>
              <div className="collapse navbar-collapse" id="navbarNavAltMarkup">
                <form className="form-inline active-red-3 active-red-4">
                  <input
                    className="form-control form-control-sm ml-3 w-75"
                    type="text"
                    placeholder="Search"
                    aria-label="Search"
                  />
                  <button type="submit">
                    <i className="fa fa-search" aria-hidden="true" />
                  </button>
                </form>
                <div className="navbar-nav">
                  <NavLink className="nav-item nav-link" to="/restaurants">
                    Restaurant
                  </NavLink>
                  <NavLink className="nav-item nav-link" to="/login">
                    Login
                  </NavLink>
                </div>
              </div>
            </nav>
          </div>
        </div>
        {/* this is the user bar will appear as user logsin */}
        <div className="container-fluid userBar-design">
          <div className="container" style={{ textAlign: "right" }}>
            <div className="dropdown">
              <button
                style={{ padding: "1px 10px" }}
                className="btn btn-info dropdown-toggle"
                type="button"
                id="dropdownMenuButton"
                data-toggle="dropdown"
                aria-haspopup="true"
                aria-expanded="false"
              >
                <small>User</small>
              </button>

              <div
                className="dropdown-menu"
                aria-labelledby="dropdownMenuButton"
              >
                <Link className="dropdown-item" to="#">
                  Action
                </Link>
                <Link className="dropdown-item" to="#">
                  Another action
                </Link>
                <Link className="dropdown-item" to="#">
                  Something else here
                </Link>
              </div>
            </div>
          </div>
        </div>
      </div>
    );
  }
}

export default NaviagtionBar;
