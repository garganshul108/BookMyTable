import React, { Component } from "react";

import "../css/filter.css";
class RestaurantFilter extends Component {
  state = {};
  render() {
    return (
      <div className="filterBox">
        <h6 style={{ fontWeight: "900" }}>Filters</h6>
        <hr />
        City
        <hr />
        <br />
        <p className="headings">Sort By</p>
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
        </p>
        <br />
        <p className="headings">Categories</p>
        <p className="filterOption">Rating</p>
        <p className="filterOption">Cost</p>
        <p className="filterOption">Cost</p>
        <p className="filterOption">Recently Added</p>
        <br />
        <p className="headings">Location</p>
        <p className="filterOption">Rating</p>
        <p className="filterOption">Cost</p>
        <p className="filterOption">Cost</p>
        <p className="filterOption">Recently Added</p>
        <br />
        <p className="headings">Cuisines</p>
        <p className="filterOption">Rating</p>
        <p className="filterOption">Cost</p>
        <p className="filterOption">Cost</p>
        <p className="filterOption">Recently Added</p>
        <br />
        <p className="headings">Establishment</p>
        <p className="filterOption">Rating</p>
        <p className="filterOption">Cost</p>
        <p className="filterOption">Cost</p>
        <p className="filterOption">Recently Added</p>
        <br />
        <p className="headings">Cost for Two</p>
        <p className="filterOption">Rating</p>
        <p className="filterOption">Cost</p>
        <p className="filterOption">Cost</p>
        <p className="filterOption">Recently Added</p>
      </div>
    );
  }
}

export default RestaurantFilter;
