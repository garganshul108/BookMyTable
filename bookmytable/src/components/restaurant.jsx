import React, { Component } from "react";

import { Switch, Route, Redirect } from "react-router-dom";
import RestaurantBookingWindow from "./subComponents/restaurantBookingWindow";
import NotFound from "./notFound";
import { Link } from "react-router-dom";
import ReviewInputForm from "./subComponents/reviewInputForm";
import { getRestaurantById } from "../services/restaurantServices";
import "./css/restaurant.css";

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
        locality_verbose: "",
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
      <div className="restaurantInfoBanner">
        <div className="row">
          <div className="col">
            <div className="row">
              <div className="col">
                <h1 className="title">{this.state.restaurant.name}</h1>
              </div>
            </div>
            <div className="row">
              <div className="col text-muted">
                {this.state.restaurant.location.locality}
                <small className="text-muted middot">
                  &nbsp;&nbsp;&nbsp;&nbsp;
                  <i className="fa fa-square" aria-hidden="true" />
                  &nbsp;&nbsp;&nbsp;&nbsp;
                </small>
                {this.state.restaurant.establishments.map(estb => `${estb} `)}
              </div>
            </div>
          </div>
          <div className="col-3 text-right">
            <div className="badge rating-large badge-success">
              {this.state.restaurant.rating}{" "}
              <span style={{ fontSize: "80%" }}>/5</span>
            </div>
          </div>
        </div>
        <hr />
        <div className="row">
          <div className="col">
            <div className="topButtons">
              <button type="button" class="btn ">
                <i class="fa fa-bookmark" aria-hidden="true" />
                &nbsp;&nbsp;Archive
              </button>
              <button type="button" class="btn ">
                <i class="fa fa-child" aria-hidden="true" />
                &nbsp;&nbsp;Been There
              </button>
              <button type="button" class="btn ">
                <i class="fa fa-cutlery" aria-hidden="true" />
                &nbsp;&nbsp;Book a Table
              </button>
              <button type="button" class="btn ">
                <i class="fa fa-pencil-square-o" aria-hidden="true" />
                &nbsp;&nbsp;Review Visit
              </button>
              <button type="button" class="btn ">
                <i class="fa fa-file-text" aria-hidden="true" />
                &nbsp;&nbsp;All reviews
              </button>
              <button type="button" class="btn ">
                <i class="fa fa-picture-o" aria-hidden="true" />
                &nbsp;&nbsp;Photos/ Gallery
              </button>
            </div>
          </div>
        </div>
        <br />
        <div className="row">
          <div className="col-4">
            <div className="row">
              <div className="col">
                <div className="subInfo">
                  <h5 className="subTitle">Phone Numbers</h5>
                  {this.state.restaurant.phone_numbers.split(",").map(ph => (
                    <React.Fragment>
                      <span
                        className="text-success"
                        style={{
                          fontWeight: "900",
                          fontSize: "1.2rem",
                          display: "block"
                        }}
                      >
                        {ph}
                      </span>
                    </React.Fragment>
                  ))}
                </div>
                <div className="subInfo">
                  <h5 className="subTitle">Cuisines</h5>
                  {this.state.restaurant.cuisines.map(cuisine => (
                    <React.Fragment>
                      <span
                        className="text-danger"
                        style={{ fontSize: "0.95rem", display: "block" }}
                      >
                        {cuisine}
                      </span>
                    </React.Fragment>
                  ))}
                </div>
                <div className="subInfo">
                  <h5 className="subTitle">Average Cost</h5>
                  <span style={{ fontSize: "0.95rem", display: "block" }}>
                    ₹{this.state.restaurant.cost} for two people (approx.)
                  </span>
                  <span
                    className="text-muted"
                    style={{ fontSize: "0.8rem", display: "block" }}
                  >
                    Exclusive of applicable taxes and charges, if any
                  </span>
                </div>
              </div>
            </div>
          </div>
          <div className="col-4">
            <div className="subInfo">
              <h5 className="subTitle">Opening Hours</h5>

              {this.state.restaurant.timings.split(",").map(time => (
                <React.Fragment>
                  <span
                    style={{
                      display: "block",
                      fontSize: "0.9rem"
                    }}
                  >
                    {time}
                  </span>
                </React.Fragment>
              ))}
              <span
                className="text-muted"
                style={{ fontSize: "0.8rem", display: "block" }}
              >
                May update on Restaurant's request
              </span>
            </div>
            <div className="subInfo">
              <h5 className="subTitle">Address</h5>
              <span
                style={{
                  display: "block",
                  fontSize: "0.95rem",
                  fontWeight: "700"
                }}
              >
                {this.state.restaurant.location.locality_verbose}
              </span>

              <span
                className="text-muted"
                style={{ fontSize: "0.8rem", display: "block" }}
              >
                {this.state.restaurant.location.address} <br />
                {this.state.restaurant.location.zipcode}
              </span>
            </div>
            <div className="subInfo">
              <h5 className="subTitle">Days</h5>
              <div className="row">
                {Object.keys(this.state.restaurant.days).map(day => (
                  <React.Fragment>
                    <div className="col-6">
                      <span style={{ fontSize: "0.85rem", display: "block" }}>
                        {this.state.restaurant.days[day] ? (
                          <i
                            className="fa fa-check text-success"
                            aria-hidden="true"
                          />
                        ) : (
                          <i
                            className="fa fa-times text-danger"
                            aria-hidden="true"
                          />
                        )}
                        &nbsp;
                        {day}
                      </span>
                    </div>
                  </React.Fragment>
                ))}
              </div>
            </div>
          </div>
          <div className="col-4">
            <div className="subInfo">
              <h5 className="subTitle">Features</h5>
              {this.state.restaurant.features.map(feature => (
                <React.Fragment>
                  <span style={{ fontSize: "0.85rem", display: "block" }}>
                    <i
                      className="fa fa-check text-success"
                      aria-hidden="true"
                    />
                    &nbsp;
                    {feature}
                  </span>
                </React.Fragment>
              ))}
            </div>
          </div>
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
              {/* <div className="row no-gutters my-2">
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
              </div> */}
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
