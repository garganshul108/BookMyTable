import React, { Component } from "react";
import { Route, Switch, Redirect } from "react-router-dom";

import NaviagtionBar from "./subComponents/navigationBar";
import Home from "./home";
import Restaurants from "./restaurants";
import Login from "./login";
import NotFound from "./notFound";

import "./css/dummy.css";

class App extends Component {
  render() {
    console.log("My App loaded... ");
    return (
      <div className="container-fluid">
        <div className="row">
          <div className="container-fluid">
            <NaviagtionBar />
          </div>
        </div>
        <div className="row">
          <div className="dummy" />
        </div>
        <div className="row">
          <Switch>
            <Route path="/restaurants" render={() => <Restaurants />} />
            <Route path="/login" render={() => <Login />} />
            <Route path="/not-found" render={() => <NotFound />} />
            <Route path="/home" render={() => <Home />} />
            <Redirect from="/" exact to="/home" />
            <Redirect to="/not-found" />
          </Switch>
        </div>
      </div>
    );
  }
}

export default App;
