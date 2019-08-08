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
    seachQuery: ""
  };

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

  render() {
    /***
     * this is the point where data as restaurants
     * is passed onto the renderer
     *
     * without filtering this is passed on to same as this.state (full data)
     */
    let { restaurants } = this.state;

    if (this.state.seachQuery)
      restaurants = restaurants.filter(restaurant =>
        restaurant.name
          .toLowerCase()
          .startsWith(this.state.seachQuery.toLowerCase())
      );

    return (
      <div className="container">
        <h3 style={{ fontWeight: 900 }}>Places available in this Region</h3>

        <div className="row" style={{ marginBottom: "150px" }}>
          {/* this is the left column with filters segement */}
          <div className="col-2">
            {/* to be replaced by RestaurantFilter in Future */}
            <RestaurantFilter />
            {/* filter section ends */}
          </div>
          <div className="col">
            {/* this is the Restaurant Catalog Display */}
            <div className="container-fluid">
              <div className="row">
                <div className="col">
                  <SearchBox
                    placeholder="Find by Name"
                    value={this.state.seachQuery}
                    onChange={this.handleSearchRestaurant}
                  />
                </div>
              </div>
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
