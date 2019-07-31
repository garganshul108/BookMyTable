import React, { Component } from "react";

class NaviagtionBar extends Component {
  state = {};
  render() {
    return (
      <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">
          Book My Table
        </a>
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
            <a class="nav-item nav-link active" href="#">
              Home
            </a>
            <a class="nav-item nav-link" href="#">
              Restaurant
            </a>
            <a class="nav-item nav-link" href="#">
              Login
            </a>
          </div>
        </div>
      </nav>
    );
  }
}

export default NaviagtionBar;
