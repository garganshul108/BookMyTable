import React, { Component } from "react";
import { getRestaurants } from "../api/dump/restaurant";

import "./css/restaurants.css";
import Restaurant from "./restaurant";

class Restaurants extends Component {
  state = {
    restaurants: []
  };

  // called once the component is initialized
  // place for all the API calls etc
  componentDidMount() {
    let restaurants = getRestaurants();
    this.setState({ restaurants });
  }

  render() {
    const { restaurants } = this.state;
    const count = restaurants.length;

    console.log(restaurants);
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
                return <Restaurant restaurant={restaurant} />;
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
