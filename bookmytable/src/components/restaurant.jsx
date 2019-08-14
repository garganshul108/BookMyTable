import React, { Component } from "react";

import { Switch, Route, Redirect } from "react-router-dom";
import RestaurantBookingWindow from "./subComponents/restaurantBookingWindow";
import NotFound from "./notFound";
import { Link } from "react-router-dom";
import ReviewInputForm from "./subComponents/reviewInputForm";
import { getRestaurantById } from "../services/restaurantServices";

const wideDisplayString =
  "?fit=around%7C920%3A200%20&crop=920%3A200%3B%2A%2C%2A";
class Restaurant extends Component {
  state = {
    restaurant: {
      capacity: 0,
      cost: 0,
      cuisines: [],
      days: {
        Monday: 0,
        Tuesday: 0,
        Wednesday: 0,
        Thursday: 0,
        Friday: 0,
        Saturday: 0,
        Sunday: 0
      },
      email: null,
      establishments: [],
      features: [],
      id: 0,
      location: {
        id: 0,
        city: "",
        zipcode: null,
        locality: "",
        address: ""
      },
      name: "",
      opening_status: null,
      phone_numbers: "",
      rating: null,
      reviews: "",
      slots: [],
      thumb: "",
      timings: "",
      website: null,
      wideDisplay: ""
    }
  };

  async componentDidMount() {
    let restaurant = await getRestaurantById(this.props.match.params.id);
    restaurant = restaurant[0];
    restaurant.wideDisplay = restaurant.thumb.split("?")[0] + wideDisplayString;
    this.setState({ restaurant }, () => {
      console.log(this.state);
    });
  }

  renderRestaurantInfo = () => {
    return (
      <div style={{ background: "white", padding: "25px" }}>
        <div className="row">
          <div className="col">
            <div className="row">
              <div className="col">
                <h1>{this.state.restaurant.name}</h1>
              </div>
            </div>
            <div className="row">
              <div className="col">
                {this.state.restaurant.location.locality}
                <small className="text-muted">
                  <i className="fa fa-square" aria-hidden="true" />
                </small>
              </div>
            </div>
          </div>
          <div className="col-4">rating</div>
        </div>
      </div>
    );
  };
  render() {
    return (
      <div className="container">
        <div className="row">
          <div className="col dummy" />
        </div>
        <div className="row">
          <div className="col">
            <div className="mainDisplay">
              <div className="row">
                <div className="col">
                  <div
                    className="restaurantImg"
                    style={{
                      background:
                        "url(" + this.state.restaurant.wideDisplay + ")",
                      height: "200px",
                      width: "100%"
                    }}
                  />
                </div>
              </div>
              {this.renderRestaurantInfo()}
              <div className="row no-gutters my-2">
                <div className="col">
                  <Link
                    to="booking"
                    // type="button"
                    class="btn btn-light"
                    style={{ width: "100%" }}
                  >
                    Booking
                  </Link>
                </div>
                <div className="col">
                  <Link
                    to="reviews"
                    // type="button"
                    class="btn btn-light"
                    style={{ width: "100%" }}
                  >
                    Reviews
                  </Link>
                </div>
                <div className="col">
                  <Link
                    to="photos"
                    // type="button"
                    class="btn btn-light"
                    style={{ width: "100%" }}
                  >
                    Photos
                  </Link>
                </div>
              </div>
              <div className="row">
                <div className="col">
                  {/* <Switch> */}
                  <Route
                    path="/restaurant/:id"
                    render={props => <RestaurantBookingWindow {...props} />}
                  />

                  <Route
                    path="/restaurant/:id"
                    render={props => <NotFound {...props} />}
                  />
                  <Route
                    path="/restaurant/:id"
                    render={props => <ReviewInputForm {...props} />}
                  />
                  {/* </Switch> */}
                </div>
              </div>
            </div>
          </div>
          <div className="col-2">options</div>
        </div>
        <div className="row">
          <div className="col dummy" />
        </div>
      </div>
    );
  }
}

export default Restaurant;
