import React, { Component } from "react";
import { Route, Switch } from "react-router-dom";

import NaviagtionBar from "./components/navigationBar";
import Home from "./components/home";
import Restaurants from "./components/restaurants";
import Login from "./components/login";
class App extends Component {
  render() {
    console.log("My App");
    return (
      <div className="container-fluid">
        <div className="row">
          <div className="col">
            <NaviagtionBar />
          </div>
        </div>
        <div className="row">
          <div className="container">
            <Switch>
              <Route path="/restaurants" component={Restaurants} />
              <Route path="/login" component={Login} />
              <Route path="/" component={Home} />
            </Switch>
          </div>
        </div>
      </div>
    );
  }
}

export default App;
