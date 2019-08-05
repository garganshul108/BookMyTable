import React, { Component } from "react";
import { Route, Switch, Redirect } from "react-router-dom";

import NaviagtionBar from "./subComponents/navigationBar";
import Home from "./home";
import Restaurants from "./restaurants";
import Login from "./login";
import NotFound from "./notFound";

import "./css/dummy.css";

class App extends Component {
  handleCloseLogin = e => {
    e.preventDefault();
    let target = document.getElementsByClassName("loginPage")[0];
    // console.log(target);
    target.style.display = "none";
  };

  handleOpenLogin = e => {
    e.preventDefault();
    let target = document.getElementsByClassName("loginPage")[0];
    // console.log(target);
    target.style.display = "block";
  };

  render() {
    console.log("My App loaded.=000=... ");
    return (
      <div className="container-fluid">
        <div className="row">
          <NaviagtionBar openLogin={this.handleOpenLogin} />
        </div>
        <div className="row">
          <div className="dummy" />
        </div>
        <div className="row">
          <Switch>
            <Route path="/not-found" render={() => <NotFound />} />
            <Route path="/home" render={() => <Home />} />
            <Route path="/restaurants" render={() => <Restaurants />} />
            {/* <Route path="/login" render={() => <Login />} /> */}
            <Redirect from="/" exact to="/home" />
            <Redirect to="/not-found" />
          </Switch>
        </div>
        <div className="loginPage" style={{ display: "none" }}>
          <Login closeTab={this.handleCloseLogin} />
        </div>
      </div>
    );
  }
}

export default App;
