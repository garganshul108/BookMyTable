import React, { Component } from "react";
import { Route, Switch, Redirect } from "react-router-dom";

import NaviagtionBar from "./subComponents/navigationBar";
import HomeTop from "./home";
import Restaurants from "./restaurants";
import Login from "./login";
import NotFound from "./notFound";

import "./css/dummy.css";
import "./css/scrollbar.css";
import SignUp from "./signup";
import HomeBottom from "./subComponents/homeBottom";
import RestaurantRegistration from "./restaurantRegistration";
import Restaurant from "./restaurant";

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
                path="/restaurants/:city"
                render={props => (
                  <NaviagtionBar
                    openLogin={this.handleOpenLogin}
                    openSignUp={this.handleOpenSignUp}
                    {...props}
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
            <Switch>
              <Route
                path="/restaurant/registration"
                render={() => <RestaurantRegistration />}
              />
              <Redirect
                from="/restaurants/dummy/:city"
                to="/restaurants/:city"
              />
              <Route
                path="/restaurant/:id"
                render={props => <Restaurant {...props} />}
              />
              <Route
                path="/restaurants/:city"
                render={props => <Restaurants {...props} />}
              />
              <Route path="/not-found" render={() => <NotFound />} />
              <Route path="/home" render={() => <HomeBottom />} />
              <Redirect from="/restaurants" to="/restaurants/delhi" />
              <Redirect from="/" exact to="/home" />
              <Redirect to="/not-found" />
            </Switch>
          </div>
          <div className="loginPage" style={{ display: "none" }}>
            <Login closeTab={this.handleCloseLogin} />
          </div>
          <div className="loginPage" style={{ display: "none" }}>
            <Route
              path="/"
              render={props => (
                <SignUp {...props} closeTab={this.handleCloseSignUp} />
              )}
            />
          </div>
        </div>

        {/* yaha se alag hai */}
      </React.Fragment>
    );
  }
}

export default App;
