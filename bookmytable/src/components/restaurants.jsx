import React, { Component } from "react";
import { getRestaurants } from "../services/restaurantServices";
import RestaurantFilter from "./subComponents/restaurantFilter";
import RestaurantCatalogue from "./subComponents/restaurantCatalogue";
import SideAds from "./subComponents/sideAds";

import "./css/restaurants.css";
import SearchBox from "./subComponents/searchBox";

class Restaurants extends Component {
  /***
   * controls every data to the page
   *
   * Filter | Display | Pagination (may be in future)
   *
   * Point to implement:
   *  - Data must be passed onto the diplay only after filter
   */
  state = {
    restaurants: [],
    seachQuery: "",
    filters: [],
    no_of_filter: "0"
  };

  /**
   *
   * structure of a filter
   * {id:"", targetProperty:"", expectedValue:""}
   *
   *
   */

  /***
   * TBD:
   *  till the DB integrates
   */
  addMiscPropertyToRestaurants(restaurants) {
    let fakeTableProps = [
      "size_ten",
      "size_eight",
      "size_six",
      "size_four",
      "size_two",
      "size_one"
    ];

    for (let restaurant of restaurants) {
      restaurant.showPhone = false;
      restaurant.showMenu = false;
      restaurant.showTables = false;
      for (let fakeTableProp of fakeTableProps) {
        restaurant[fakeTableProp] = 1;
      }
    }

    return restaurants;
  }
  /***
   * TBD ends
   */

  componentDidMount() {
    let restaurants = getRestaurants();
    restaurants = this.addMiscPropertyToRestaurants(restaurants);
    console.log(restaurants);

    /***
     * render related properties
     * @boolean showPhone
     * @boolean showMenu
     * @boolean showTables(To be configured)
     */
    for (let restaurant of restaurants) {
      restaurant.showPhone = false;
      restaurant.showMenu = false;
    }
    /***
     * checking for the properties onto the console
     * TBD after done
     */
    console.log(restaurants);
    this.setState({ restaurants });
  }

  handleSearchRestaurant = query => {
    this.setState({ seachQuery: query });
  };

  filterByName = restaurants => {
    if (this.state.seachQuery)
      restaurants = restaurants.filter(restaurant => {
        let nameLiterals = restaurant.name.split(" ");
        for (let literal of nameLiterals) {
          if (
            literal
              .toLowerCase()
              .startsWith(this.state.seachQuery.toLowerCase())
          )
            return true;
        }
        return false;
      });

    return restaurants;
  };

  handleAddFilter = filter => {
    let newId = (parseInt(this.state.no_of_filter) + 1).toString();
    let { filters } = this.state;
    filter.id = newId;
    filters.push(filter);
    this.setState({ filters, no_of_filter: newId }, () => {
      console.log("fomr res", this.state);
    });
  };

  render() {
    const applyFilters = restaurants => {
      return this.filterByName(restaurants);
    };
    /***
     * this is the point where data as restaurants
     * is passed onto the renderer
     *
     * without filtering this is passed on to same as this.state (full data)
     */
    let { restaurants } = this.state;
    restaurants = applyFilters(restaurants);

    return (
      <div className="container">
        <h3 style={{ fontWeight: 900 }}>Places available in this Region</h3>

        <div className="row" style={{ marginBottom: "150px" }}>
          {/* this is the left column with filters segement */}
          <div className="col-2">
            {/* to be replaced by RestaurantFilter in Future */}
            <RestaurantFilter addFilter={this.handleAddFilter} />
            {/* filter section ends */}
          </div>
          <div className="col">
            {/* this is the Restaurant Catalog Display */}
            <div className="container-fluid">
              <div className="row">
                <div className="col">
                  <SearchBox
                    placeholder="Find by Name"
                    idForLabel="searchName"
                    value={this.state.seachQuery}
                    onChange={this.handleSearchRestaurant}
                  />
                </div>
              </div>
              {parseInt(this.state.no_of_filter) > 0 && (
                <div className="filterDisplay">
                  {this.state.filters.map(filter => (
                    <button className="btn smallBtn btn-secondary">
                      <small>
                        {filter.expectedValue}&nbsp;
                        <i className="fa fa-times" aria-hidden="true" />
                      </small>
                    </button>
                  ))}
                </div>
              )}
            </div>
            <RestaurantCatalogue restaurants={restaurants} />
            {/* end of display catalogue */}
          </div>
          {/* this is the ads section for the app */}
          <div className="col-2">
            <SideAds />
          </div>
        </div>
      </div>
    );
  }
}

export default Restaurants;
