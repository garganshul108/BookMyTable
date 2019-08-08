import React, { Component } from "react";

class SeachableList extends Component {
  handleSelectOption = e => {
    console.log("option select", e.currentTarget);
  };
  render() {
    const { listName, value, label, onChange, children, ...rest } = this.props;
    return (
      <div className="form-group">
        {label && <small className="text-muted">{label}</small>}
        <input
          className="form-control"
          value={value}
          list={listName}
          onChange={onChange}
          {...rest}
        />
        <datalist id={listName}>{children}</datalist>
      </div>
    );
  }
}

export default SeachableList;
