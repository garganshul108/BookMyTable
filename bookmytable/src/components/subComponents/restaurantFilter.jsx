import React, { Component } from "react";

import "../css/filter.css";
import Filter from "./filter";
import { getCuisines, getCuisinesByName } from "../../services/cuisineServices";
import { getEstablishments } from "../../services/establishmentServices";
import { getFeatures } from "../../services/featureServices";
import { getCitiesByNames } from "../../services/cityServices";
import md5 from "md5/md5";
class RestaurantFilter extends Component {
  state = {
    cuisines: [],
    establishments: [],
    features: [],
    localities: [],
    costs: [],
    colorClasses: {},
    filter: { targetProperty: "", expectedValue: "", id: "", colorClass: "" }
  };

  componentDidMount() {
    let cuisines = getCuisines();
    let establishments = getEstablishments();
    let features = getFeatures();
    let localities = getCitiesByNames();
    let colorClasses = {
      cuisines: "info",
      establishments: "secondary",
      features: "warning",
      locality: "primary"
    };
    let costs = ["Rs. 250+", "Rs. 500+", "Rs. 1000+", "Rs. 1500+", "Rs. 2000+"];

    this.setState({
      cuisines,
      establishments,
      features,
      localities,
      costs,
      colorClasses
    });
  }

  setLocalFilter = ({ currentTarget: target }) => {
    console.log(target);
    let { filter } = this.state;
    filter.expectedValue = target.dataset.value;
    filter.targetProperty = target.dataset.name;
    filter.id = md5(filter.targetProperty + "-" + filter.expectedValue);
    filter.colorClass = this.state.colorClasses[filter.targetProperty];
    this.setState({ filter });
  };

  sendFilter = e => {
    this.props.addFilter({ ...this.state.filter });
    let filter = {
      id: "",
      expectedValue: "",
      targetProperty: "",
      colorClass: ""
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
          targetProperty="cost"
          label="Average Cost"
          content={this.state.costs}
          sendFilter={this.sendFilter}
          setLocalFilter={this.setLocalFilter}
          unsetFilter={this.props.handleDeleteFilter}
        />
        <Filter
          targetProperty="locality"
          label="Locality"
          content={this.state.localities}
          sendFilter={this.sendFilter}
          setLocalFilter={this.setLocalFilter}
          unsetFilter={this.props.handleDeleteFilter}
        />
        <Filter
          targetProperty="cuisines"
          label="Cuisine"
          content={this.state.cuisines}
          sendFilter={this.sendFilter}
          unsetFilter={this.props.handleDeleteFilter}
          setLocalFilter={this.setLocalFilter}
        />
        <Filter
          targetProperty="establishments"
          label="Establishment Type"
          content={this.state.establishments}
          sendFilter={this.sendFilter}
          unsetFilter={this.props.handleDeleteFilter}
          setLocalFilter={this.setLocalFilter}
        />
        <Filter
          targetProperty="features"
          label="Features"
          content={this.state.features}
          sendFilter={this.sendFilter}
          unsetFilter={this.props.handleDeleteFilter}
          setLocalFilter={this.setLocalFilter}
        />
      </div>
    );
  }
}

export default RestaurantFilter;
