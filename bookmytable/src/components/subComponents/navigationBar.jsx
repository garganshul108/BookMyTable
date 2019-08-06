import React, { Component } from "react";
import { Link, NavLink } from "react-router-dom";

import "../css/navigationBar.css";
import auth from "../../services/authServices";
// import Login from '../login';
class NaviagtionBar extends Component {
  state = {};
  render() {
    return (
      <React.Fragment>
        <div className="navBar-design">
          <div className="container">
            <nav className="navbar navbar-expand-lg navbar-dark">
              <NavLink className="navbar-brand" to="/home">
                BookMyTable
              </NavLink>
              <button
                className="navbar-toggler"
                type="button"
                data-toggle="collapse"
                data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent"
                aria-expanded="false"
                aria-label="Toggle navigation"
              >
                <span className="navbar-toggler-icon" />
              </button>

              <div
                className="collapse navbar-collapse"
                id="navbarSupportedContent"
              >
                <ul className="navbar-nav mr-auto">
                  <li className="nav-item active">
                    <NavLink className="nav-link" to="#">
                      Home <span className="sr-only">(current)</span>
                    </NavLink>
                  </li>
                </ul>
                <form className="form-inline my-2 my-lg-0">
                  <input
                    className="form-control mr-sm-2"
                    type="search"
                    aria-label="Search"
                  />
                  <button
                    className="btn btn-danger btn-outine-info my-2 my-sm-0"
                    to="/restaurants"
                  >
                    <i className="fa fa-search" aria-hidden="true" />
                  </button>
                </form>
              </div>
            </nav>
          </div>
        </div>
        {/* this is the user bar will appear as user logsin */}
        <div className="userBar-design">
          <div className="container" style={{ textAlign: "right" }}>
            {auth.getUser() && (
              <React.Fragment>
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
                    <NavLink className="dropdown-item" to="/profile">
                      <span className="text-muted">
                        <i className="fa fa-user" aria-hidden="true" />
                      </span>
                      &nbsp;&nbsp;Profile
                    </NavLink>
                    <NavLink className="dropdown-item" to="/logout">
                      <span className="text-muted">
                        <i className="fa fa-sign-out" aria-hidden="true" />
                      </span>
                      &nbsp;&nbsp;Logout
                    </NavLink>
                    <NavLink className="dropdown-item" to="/contact">
                      <span className="text-muted">
                        <i className="fa fa-lightbulb-o" aria-hidden="true" />
                      </span>
                      &nbsp;&nbsp;About us
                    </NavLink>
                  </div>
                </div>
              </React.Fragment>
            )}
            {!auth.getUser() && (
              <React.Fragment>
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
                    <small style={{ fontWeight: 900 }}>Login</small>
                  </button>

                  <div
                    className="dropdown-menu"
                    aria-labelledby="dropdownMenuButton"
                  >
                    <NavLink
                      className="dropdown-item"
                      onClick={this.props.openLogin}
                    >
                      <small className="text text-muted">Already a user?</small>
                      <br />
                      <span className="text-muted">
                        <i className="fa fa-user" aria-hidden="true" />
                      </span>
                      &nbsp;&nbsp;Login
                    </NavLink>
                    <hr />
                    <NavLink
                      className="dropdown-item"
                      onClick={this.props.openSignUp}
                    >
                      <small className="text text-muted">New user?</small>
                      <br />
                      <span className="text-muted">
                        <i className="fa fa-sign-out" aria-hidden="true" />
                      </span>
                      &nbsp;&nbsp;Sign Up
                    </NavLink>
                  </div>
                </div>
              </React.Fragment>
            )}
          </div>
        </div>
      </React.Fragment>
    );
  }
}

export default NaviagtionBar;
