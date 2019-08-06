import React, { Component } from "react";
import { Route, Switch, Redirect } from "react-router-dom";

import NaviagtionBar from "./subComponents/navigationBar";
import HomeTop from "./homeTop";
import Restaurants from "./restaurants";
import Login from "./login";
import NotFound from "./notFound";

import "./css/dummy.css";
import "./css/scrollbar.css";
import SignUp from "./signup";
import HomeBottom from "./homeBottom";
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
      <React.Fragment>
        <div className="container-fluid">
          <div className="row">
            <Switch>
              <Route
                path="/home"
                exact
                render={() => (
                  <HomeTop
                    openLogin={this.handleOpenLogin}
                    openSignUp={this.handleOpenSignUp}
                  />
                )}
              />
              <Route
                path="/"
                render={props => (
                  <NaviagtionBar
                    openLogin={this.handleOpenLogin}
                    openSignUp={this.handleOpenSignUp}
                    {...props}
                  />
                )}
              />
            </Switch>
          </div>
        </div>
        <div className="container-fluid">
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
              <Route path="/home" render={() => <HomeBottom />} />
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

        {/* yaha se alag hai */}
      </React.Fragment>
    );
  }
}

export default App;
