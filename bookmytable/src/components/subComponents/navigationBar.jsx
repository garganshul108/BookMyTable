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
                </div>
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
                    <Link className="dropdown-item" to="/profile">
                      <span className="text-muted">
                        <i className="fa fa-user" aria-hidden="true" />
                      </span>
                      &nbsp;&nbsp;Profile
                    </Link>
                    <Link className="dropdown-item" to="/logout">
                      <span className="text-muted">
                        <i className="fa fa-sign-out" aria-hidden="true" />
                      </span>
                      &nbsp;&nbsp;Logout
                    </Link>
                    <Link className="dropdown-item" to="/contact">
                      <span className="text-muted">
                        <i className="fa fa-lightbulb-o" aria-hidden="true" />
                      </span>
                      &nbsp;&nbsp;About us
                    </Link>
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
                    <Link
                      className="dropdown-item"
                      onClick={this.props.openLogin}
                    >
                      <small className="text text-muted">Already a user?</small>
                      <br />
                      <span className="text-muted">
                        <i className="fa fa-user" aria-hidden="true" />
                      </span>
                      &nbsp;&nbsp;Login
                    </Link>
                    <hr />
                    <Link
                      className="dropdown-item"
                      onClick={this.props.openSignUp}
                    >
                      <small className="text text-muted">New user?</small>
                      <br />
                      <span className="text-muted">
                        <i className="fa fa-sign-out" aria-hidden="true" />
                      </span>
                      &nbsp;&nbsp;Sign Up
                    </Link>
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
