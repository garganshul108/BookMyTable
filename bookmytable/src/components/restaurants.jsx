import React, { Component } from "react";
import { getRestaurants } from "../api/dump/restaurant";
import TableRow from "./table/tableRow";
import displayColumns from "./restaurantTableConfig.json";

class Restaurants extends Component {
  state = {
    data: []
  };

  // called once the component is initialized
  // place for all the API calls etc
  componentDidMount() {
    let data = getRestaurants();
    this.setState({ data });
  }

  render() {
    const { data } = this.state;
    const count = data.length;
    return (
      <React.Fragment>
        <h1>Restaurants: {count}</h1>
        <table className="table">
          <thead>
            <tr>
              {displayColumns.map(column => {
                return <th key={column._id}>{column.title}</th>;
              })}
            </tr>
          </thead>
          <tbody>
            {data.map(item => (
              <TableRow key={item._id} content={item} />
            ))}
          </tbody>
        </table>
      </React.Fragment>
    );
  }
}

export default Restaurants;
