import React, { Component } from "react";

class TableRow extends Component {
  state = {};
  render() {
    const { name, rating, cuisine } = this.props.content;
    return (
      <tr>
        <td>{name}</td>
        <td>{rating}</td>
        <td>{cuisine}</td>
      </tr>
    );
  }
}

export default TableRow;
