import React, { Component } from "react";
import { Route, Switch, Redirect } from "react-router-dom";

import NaviagtionBar from "./components/navigationBar";
import Home from "./components/home";
import Restaurants from "./components/restaurants";
import Login from "./components/login";
import NotFound from "./components/notFound";

import "./dummy.css";

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
