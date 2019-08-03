import React, { Component } from "react";
import { getRestaurants } from "../api/dump/restaurant";

import "./css/restaurants.css";
import Restaurant from "./restaurant";

class Restaurants extends Component {
  state = {
    restaurants: []
  };

  handleCall = restaurant => {
    console.log("call clicked");
    let uRestaurants = this.state.restaurants;
    let targetRestaurant = uRestaurants[uRestaurants.indexOf(restaurant)];
    targetRestaurant.showPhone = !targetRestaurant.showPhone;
    this.setState({ restaurants: uRestaurants });
  };

  handleMenu = restaurant => {
    console.log("menu clicked");
    let uRestaurants = this.state.restaurants;
    let targetRestaurant = uRestaurants[uRestaurants.indexOf(restaurant)];
    targetRestaurant.showMenu = !targetRestaurant.showMenu;
    this.setState({ restaurants: uRestaurants });
  };

  // called once the component is initialized
  // place for all the API calls etc
  componentDidMount() {
    let restaurants = getRestaurants();

    for (let restaurant of restaurants) {
      restaurant.showPhone = false;
      restaurant.showMenu = false;
    }
    console.log(restaurants);
    this.setState({ restaurants });
  }

  render() {
    const { restaurants } = this.state;
    const count = restaurants.length;

    return (
      <React.Fragment>
        <h3 style={{ fontWeight: 900 }}>
          Places available in this Region: {count}
        </h3>
        <div className="row" style={{ marginBottom: "150px" }}>
          {/* this is the left column with filters segement */}
          <div className="col-2">
            <p>Filter</p>
          </div>
          {/**
           *
           * this is the catalogue display for the restaurants
           * each restaurant has its own div
           *
           */}
          <div className="col">
            <div className="container-fluid restaurantCatalog">
              {restaurants.map(restaurant => {
                return (
                  <Restaurant
                    onMenu={this.handleMenu}
                    onCall={this.handleCall}
                    restaurant={restaurant}
                  />
                );
              })}
            </div>
          </div>
          {/* this is the ads section for the app */}
          <div className="col-2">
            <p>Ads</p>
          </div>
        </div>
      </React.Fragment>
    );
  }
}

export default Restaurants;
