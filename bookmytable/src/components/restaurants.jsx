import React, { Component } from "react";
import { getRestaurants } from "../dummyapi/restaurant";
import TableRow from "./table/tableRow";

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
            <th>Name</th>
            <th>Rating</th>
            <th>Cuisine</th>
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
