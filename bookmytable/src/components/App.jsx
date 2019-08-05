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
    console.log("My App loaded.=000=... ");
    return (
      <div className="container-fluid">
        <div className="row">
          <NaviagtionBar />
        </div>
        <div className="row">
          <div className="dummy" />
        </div>
        <div className="row">
          <Switch>
            <Route path="/not-found" render={() => <NotFound />} />
            <Route path="/home" render={() => <Home />} />
            <Route path="/restaurants" render={() => <Restaurants />} />
            <Route path="/login" render={() => <Login />} />
            <Redirect from="/" exact to="/home" />
            <Redirect to="/not-found" />
          </Switch>
        </div>
      </div>
    );
  }
}

export default App;
