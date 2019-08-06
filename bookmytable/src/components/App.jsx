import React, { Component } from "react";
import { Route, Switch, Redirect } from "react-router-dom";

import NaviagtionBar from "./subComponents/navigationBar";
import Home from "./home";
import Restaurants from "./restaurants";
import Login from "./login";
import NotFound from "./notFound";

import "./css/dummy.css";
import "./css/scrollbar.css";
import SignUp from "./signup";
import RestaurantRegistration from "./restaurantRegistration";

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

  handleCloseSignUp = e => {
    e.preventDefault();
    let target = document.getElementsByClassName("loginPage")[1];
    // console.log(target);
    target.style.display = "none";
  };

  handleOpenSignUp = e => {
    e.preventDefault();
    let target = document.getElementsByClassName("loginPage")[1];
    // console.log(target);
    target.style.display = "block";
  };

  render() {
    console.log("My App loaded.=000=... ");
    return (
      <div className="container-fluid">
        <div className="row">
          <NaviagtionBar
            openLogin={this.handleOpenLogin}
            openSignUp={this.handleOpenSignUp}
          />
        </div>
        <div className="row">
          <div className="dummy" />
        </div>
        <div className="row">
          <Switch>
            <Route
              path="/restaurant/registration"
              render={() => <RestaurantRegistration />}
            />
            <Route path="/not-found" render={() => <NotFound />} />
            <Route path="/home" render={() => <Home />} />
            <Route path="/restaurants" render={() => <Restaurants />} />
            <Redirect from="/" exact to="/home" />
            <Redirect to="/not-found" />
          </Switch>
        </div>
        <div className="loginPage" style={{ display: "none" }}>
          <Login closeTab={this.handleCloseLogin} />
        </div>
        <div className="loginPage" style={{ display: "none" }}>
          <SignUp closeTab={this.handleCloseSignUp} />
        </div>
      </div>
    );
  }
}

export default App;
