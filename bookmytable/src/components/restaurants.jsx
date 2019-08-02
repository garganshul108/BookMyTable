import React, { Component } from "react";
import { getRestaurants } from "../api/dump/restaurant";
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
    let {
      id,
      name,
      highlights: tags,
      average_cost_for_two: avCost,
      cuisines,
      currency,
      thumb,
      user_rating: rating,
      timings,
      location,
      establishment: establishments
    } = restaurant;

    let { aggregate_rating: aggRating, votes } = rating;
    let { locality: highLocals, address } = location;
    cuisines = refactorCuisines(cuisines);
    name = refactorName(name);

    function renderTags() {
      let rTags = tags.slice(0, 5);
      return (
        <React.Fragment>
          {rTags.map(tag => (
            <span className="badge badge-warning">{tag}</span>
          ))}
        </React.Fragment>
      );
    }

    function renderCuisines() {
      let rCuisines = cuisines.slice(0, 5);
      return (
        <React.Fragment>
          {rCuisines.map(cuisine => (
            <span className="badge badge-info">{cuisine}</span>
          ))}
        </React.Fragment>
      );
    }

    function renderEstablishments() {
      let establishmentString = "";
      for (let establishment of establishments) {
        establishmentString += establishment + " ";
      }
      return establishmentString;
    }

    return (
      <div className="container-fluid restaurantDisplay" key={id}>
        {/* this is the upper portion */}
        <div className="row">
          <div className="col-3">
            <img
              className="restaurantThumbnail"
              src={thumb}
              alt="Image not Found"
            />
          </div>

          <div className="col restaurantDesc">
            <p className="establishment">{renderEstablishments()}</p>
            <p className="banner">{name}</p>
            <p className="location">{highLocals}</p>
            <p className="address">{address}</p>
          </div>

          <div className="col-2 reviewDiv" style={{ textAlign: "right" }}>
            <h4 style={{ marginTop: "50%" }}>
              <span className="badge badge-success">{aggRating}</span>
            </h4>
            <span className="voteCount">{votes} votes</span>
          </div>
        </div>
        <hr />
        {/* this is the middle session */}
        <div className="row features">
          <table>
            <tr>
              <td className="header">CUISINES:</td>
              <td className="data">{renderCuisines()}</td>
            </tr>
            <tr>
              <td className="header">COST FOR TWO:</td>
              <td className="data">
                {currency} {avCost}
              </td>
            </tr>
            <tr>
              <td className="header">HOURS:</td>
              <td className="data"> {timings}</td>
            </tr>
            <tr>
              <td className="header">FEATURES:</td>
              <td className="data"> {renderTags()}</td>
            </tr>
          </table>
        </div>
        <hr />
        {/* this is lower portion */}
        <div className="row restaurantContacts">
          <div className="col-4">
            <button id="call" className="options">
              <span>
                <i className="fa fa-phone" aria-hidden="true" />
              </span>{" "}
              <span>Call</span>
            </button>
          </div>
          <div className="col-4">
            <button id="menu" className="options">
              <span>
                <i class="fa fa-book" aria-hidden="true" />
              </span>{" "}
              <span>Menu</span>
            </button>
          </div>
          <div className="col-4">
            <button id="book" className="options">
              <span>
                <i className="fa fa-calendar" aria-hidden="true" />
              </span>{" "}
              <span>Book Table</span>
            </button>
          </div>
        </div>
        {/* display ends */}
      </div>
    );
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
          <div className="col-2">
            <p>Filter</p>
          </div>
          <div className="col">
            <div className="container-fluid restaurantCatalog">
              {restaurants.map(restaurant => this.renderRestaurant(restaurant))}
            </div>
          </div>
          <div className="col-2">
            <p>Ads</p>
          </div>
        </div>
      </React.Fragment>
    );
  }
}

export default Restaurants;
