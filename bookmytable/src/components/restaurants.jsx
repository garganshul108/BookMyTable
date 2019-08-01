import React, { Component } from "react";
import { getRestaurants } from "../api/dump/restaurant";
import displayColumns from "./restaurantTableConfig.json";
import { captialize } from "../util/util";

import "./css/restaurants.css";

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

  renderRestaurant(restaurant) {
    function refactorName(name) {
      return captialize(name);
    }

    function refactorCuisines(cuisines) {
      return cuisines.split(",");
    }

    console.log(restaurant.id);
    var {
      id,
      name,
      highlights: tags,
      average_cost_for_two: avCost,
      cuisines,
      currency
    } = restaurant;

    cuisines = refactorCuisines(cuisines);
    name = refactorName(name);

    function renderTags() {
      return (
        <React.Fragment>
          {tags.map(tag => (
            <span className="badge badge-info">{tag}</span>
          ))}
        </React.Fragment>
      );
    }

    function renderCuisines() {
      return (
        <React.Fragment>
          {cuisines.map(cuisine => (
            <span className="badge badge-danger">{cuisine}</span>
          ))}
        </React.Fragment>
      );
    }

    return (
      <div className="row restaurantDisplay" key={id}>
        <div className="col-2">
          <h6 style={{ textAlign: "center" }}>Image</h6>
          <p style={{ textAlign: "center" }}>
            here the image will come once the path is set
          </p>
        </div>

        <div className="col-7 restaurantDesc">
          <h4>{name}</h4>

          <p>
            Av cost: {currency}
            {avCost}
          </p>
          <div>{renderCuisines()}</div>
          <div>{renderTags()}</div>
        </div>

        <div className="col-3">
          <h6 style={{ textAlign: "center" }}>Extra</h6>
          <p style={{ textAlign: "center" }}>Booking buttons etc</p>
        </div>
      </div>
    );
  }

  render() {
    const { restaurants } = this.state;
    const count = restaurants.length;

    console.log(restaurants);
    return (
      <React.Fragment>
        <div className="row" style={{ marginBottom: "150px" }}>
          <div className="col-2">
            <p>Filter</p>
          </div>
          <div className="col">
            <h3>Restaurants: {count}</h3>
            <div className="container-fluid restaurantCatalog">
              {restaurants.map(restaurant => this.renderRestaurant(restaurant))}
            </div>
          </div>
        </div>
      </React.Fragment>
    );
  }
}

export default Restaurants;
