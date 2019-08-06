import React, { Component } from "react";
import displayColumns from "../restaurantTableConfig.json";
class TableRow extends Component {
  state = {};
  render() {
    const item = this.props.content;
    return (
      <tr>
        {displayColumns.map(column => {
          return <td key={column._id}>{item[column["name"]]}</td>;
        })}
      </tr>
    );
  }
}

export default TableRow;
