import React, { Component } from "react";
import { Link, NavLink } from "react-router-dom";
class NaviagtionBar extends Component {
  state = {};
  render() {
    return (
      <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <Link class="navbar-brand" to="/">
          Book My Table
        </Link>
        <button
          class="navbar-toggler"
          type="button"
          data-toggle="collapse"
          data-target="#navbarNavAltMarkup"
          aria-controls="navbarNavAltMarkup"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon" />
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
          <div class="navbar-nav">
            <NavLink class="nav-item nav-link" to="/home">
              Home
            </NavLink>
            <NavLink class="nav-item nav-link" to="/restaurants">
              Restaurant
            </NavLink>
            <NavLink class="nav-item nav-link" to="/login">
              Login
            </NavLink>
          </div>
        </div>
      </nav>
    );
  }
}

export default NaviagtionBar;
