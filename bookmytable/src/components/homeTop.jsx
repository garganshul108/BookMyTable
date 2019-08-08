import React, { Component } from "react";
import "./css/home.css";
import img from "./images/HomeTab.jpg";
import { Link } from "react-router-dom";
import SeachableList from "./subComponents/searchableList";
import { getCities } from "../services/cityServices";
class HomeTop extends Component {
  state = {
    cities: [],
    city: ""
  };

  componentDidMount() {
    const cities = getCities();
    this.setState({ cities });
  }

  handleCityInputChange = ({ currentTarget: input }) => {
    console.log("city", input);
    let { city } = this.state;
    console.log("input.value", input.value);
    city = input.value;
    console.log("cc:", city);
    this.setState({ city }, () => {
      console.log(this.state);
    });
  };

  render() {
    return (
      <div className="homeTab">
        <div className="row no-gutters">
          <div className="col">
            <div className="homeContent">
              <div className="dummy" />
              <div className="container">
                <div className="row">
                  <div className="col-7">
                    <h3 className="title">BookMyTable.com</h3>
                  </div>
                  <div className="col-5">
                    <div className="userButtons">
                      <Link
                        className="btn btn-danger buttons"
                        onClick={this.props.openLogin}
                      >
                        <small>
                          <span className="text text-default">
                            <i className="fa fa-user" aria-hidden="true" />
                          </span>
                          &nbsp;&nbsp;Login
                        </small>
                      </Link>
                      <Link
                        className="btn btn-warning  buttons"
                        onClick={this.props.openSignUp}
                      >
                        <small>
                          <span className="text text-default">
                            <i className="fa fa-sign-out" aria-hidden="true" />
                          </span>
                          &nbsp;&nbsp;New ?
                        </small>
                      </Link>
                    </div>
                  </div>
                </div>
                <div className="row">
                  <div className="dummy" />
                </div>
                <div className="row">
                  <div className="col desc">
                    <big>Hungry KYA?</big>
                    <small className="text text-muted">
                      What about a table in the restaurant near you?
                    </small>
                  </div>
                </div>
                <div className="row searchBox">
                  <div className="col">
                    {/* --------------------------------------------------------------------------------- */}
                    {/* --------------------------------------------------------------------------------- */}
                    {/* --------------------------------------------------------------------------------- */}
                    {/* --------------------------------------------------------------------------------- */}
                    {/* --------------------------------------------------------------------------------- */}
                    {/* --------------------------------------------------------------------------------- */}
                    {/* --------------------------------------------------------------------------------- */}
                    {/* --------------------------------------------------------------------------------- */}
                    {/* --------------------------------------------------------------------------------- */}
                    {/* --------------------------------------------------------------------------------- */}
                    {/* --------------------------------------------------------------------------------- */}
                    {/* --------------------------------------------------------------------------------- */}
                    {/* --------------------------------------------------------------------------------- */}
                    {/* --------------------------------------------------------------------------------- */}
                    {/* --------------------------------------------------------------------------------- */}
                    {/* --------------------------------------------------------------------------------- */}
                    <form className="form-inline">
                      <SeachableList
                        listToDisplay={this.state.cities}
                        display="name"
                        label="state"
                        placeholder="City / State"
                        listName="cities"
                        value={this.state.city}
                        onChange={this.handleCityInputChange}
                      />
                      <div className="form-group">
                        <Link
                          className="btn btn-info my-2 my-sm-0"
                          to="/restaurants"
                          type="submit"
                        >
                          FIND PLACES
                        </Link>
                      </div>
                    </form>
                    {/* --------------------------------------------------------------------------------- */}
                    {/* --------------------------------------------------------------------------------- */}
                    {/* --------------------------------------------------------------------------------- */}
                    {/* --------------------------------------------------------------------------------- */}
                    {/* --------------------------------------------------------------------------------- */}
                    {/* --------------------------------------------------------------------------------- */}
                    {/* --------------------------------------------------------------------------------- */}
                    {/* --------------------------------------------------------------------------------- */}
                    {/* --------------------------------------------------------------------------------- */}
                    {/* --------------------------------------------------------------------------------- */}
                    {/* --------------------------------------------------------------------------------- */}
                    {/* --------------------------------------------------------------------------------- */}
                    {/* --------------------------------------------------------------------------------- */}
                    {/* --------------------------------------------------------------------------------- */}
                    {/* --------------------------------------------------------------------------------- */}
                    {/* --------------------------------------------------------------------------------- */}
                    {/* --------------------------------------------------------------------------------- */}
                    {/* --------------------------------------------------------------------------------- */}
                    {/* --------------------------------------------------------------------------------- */}
                    {/* --------------------------------------------------------------------------------- */}
                    {/* --------------------------------------------------------------------------------- */}
                  </div>
                </div>
                <div className="row">
                  <div className="col desc">
                    <small className="text text-muted">
                      <p>Popular Cities</p>

                      <strong>
                        <a>Delhi</a>
                        <a>KolKata</a>
                        <a>Gurgaon</a>
                      </strong>
                    </small>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div className="col-7">
            <img src={img} alt="" />
          </div>
        </div>
        <div className="row no-gutters">
          <div
            className="col"
            style={{ height: "300px", background: "black" }}
          />
        </div>
      </div>
    );
  }
}

export default HomeTop;
