import React, { Component } from "react";

import { Switch, Route, Redirect } from "react-router-dom";
import RestaurantBookingWindow from "./subComponents/restaurantBookingWindow";
import NotFound from "./notFound";
import { Link } from "react-router-dom";

class Restaurant extends Component {
  state = {};
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
                <div
                  className="restaurantImg"
                  style={{
                    background: "black",
                    height: "200px",
                    width: "100%"
                  }}
                >
                  {/* <img alt="too soon" /> */}
                </div>
              </div>
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
                  <Switch>
                    <Route
                      path="/restaurant/:id/booking"
                      render={props => <RestaurantBookingWindow {...props} />}
                    />
                    <Route
                      path="/restaurant/:id/reviews"
                      render={props => <NotFound {...props} />}
                    />
                    <Route
                      path="/restaurant/:id/photos"
                      render={props => <NotFound {...props} />}
                    />
                    <Redirect
                      from="/restaurant/:id/"
                      to="/restaurant/:id/booking"
                    />
                  </Switch>
                </div>
              </div>
            </div>
          </div>
          <div className="col-4">options</div>
        </div>
        <div className="row">
          <div className="col dummy" />
        </div>
      </div>
    );
  }
}

export default Restaurant;
