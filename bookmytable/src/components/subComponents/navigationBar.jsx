import React, { Component } from "react";
import { Link, NavLink } from "react-router-dom";

import "../css/navigationBar.css";
class NaviagtionBar extends Component {
  state = {};
  render() {
    return (
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
                  class="form-control form-control-sm ml-3 w-75"
                  type="text"
                  placeholder="Search"
                  aria-label="Search"
                />
                <button type="submit">
                  <i class="fa fa-search" aria-hidden="true" />
                </button>
              </form>
              <div className="navbar-nav">
                <NavLink className="nav-item nav-link" to="/restaurants">
                  Restaurant
                </NavLink>
                <NavLink
                  className="nav-item nav-link"
                  onClick={this.props.openLogin}
                >
                  Login
                </NavLink>
              </div>
            </div>
          </nav>
        </div>
      </div>
    );
  }
}

export default NaviagtionBar;
