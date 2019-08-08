import React, { Component } from "react";

import "../css/filter.css";
import Filter from "./filter";
import { getCuisines } from "../../services/cuisineServices";
import { getEstablishment } from "../../services/establishmentServices";
import { getFeatures } from "../../services/featureServices";
import { getCitiesByNames } from "../../services/cityServices";
class RestaurantFilter extends Component {
  state = {
    cuisines: [],
    establishments: [],
    features: [],
    localities: [],
    costs: [],
    filter: { targetProperty: "", expectedValue: "" }
  };

  componentDidMount() {
    let cuisines = getCuisines();
    let establishments = getEstablishment();
    let features = getFeatures();
    let localities = getCitiesByNames();
    let costs = ["Rs. 250+", "Rs. 500+", "Rs. 1000+", "Rs. 1500+", "Rs. 2000+"];

    this.setState({ cuisines, establishments, features, localities, costs });
  }

  setLocalFilter = ({ currentTarget: target }) => {
    let { filter } = this.state;
    filter.expectedValue = target.innerHTML;
    filter.targetProperty = target.name;
    this.setState({ filter });
  };

  sendFilter = e => {
    this.props.addFilter({ ...this.state.filter });
    let filter = {
      id: "",
      expectedValue: "",
      targetProperty: ""
    };
    this.setState({ filter });
  };

  render() {
    return (
      <div className="filtersBox">
        <hr />
        <h6 style={{ fontWeight: "900" }}>Filters</h6>
        <hr />
        {/* City
        <hr />
        <br /> */}
        {/* <p className="headings">Sort By</p>
        <p className="filterOption">
          Rating&nbsp;&nbsp;<small className="text-muted">high to low</small>
        </p>
        <p className="filterOption">
          Cost&nbsp;&nbsp;<small className="text-muted">high to low</small>
        </p>
        <p className="filterOption">
          Cost&nbsp;&nbsp;<small className="text-muted">low to high</small>
        </p>
        <p className="filterOption">
          Recently Added&nbsp;&nbsp;
          <small className="text-muted">old to new</small>
        </p> */}
        <Filter
          targetProperty="average_cost_for_two"
          label="Average Cost"
          content={this.state.costs}
          sendFilter={this.sendFilter}
          setLocalFilter={this.setLocalFilter}
        />
        <Filter
          targetProperty="locality"
          label="Locality"
          content={this.state.localities}
          sendFilter={this.sendFilter}
          setLocalFilter={this.setLocalFilter}
        />
        <Filter
          targetProperty="cuisine"
          label="Cuisine"
          content={this.state.cuisines}
          sendFilter={this.sendFilter}
          setLocalFilter={this.setLocalFilter}
        />
        <Filter
          targetProperty="establishment"
          label="Establishment Type"
          content={this.state.establishments}
          sendFilter={this.sendFilter}
          setLocalFilter={this.setLocalFilter}
        />
        <Filter
          targetProperty="features"
          label="Features"
          content={this.state.features}
          sendFilter={this.sendFilter}
          setLocalFilter={this.setLocalFilter}
        />
      </div>
    );
  }
}

export default RestaurantFilter;
