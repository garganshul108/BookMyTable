import React, { Component } from "react";

class SeachableList extends Component {
  handleSelectOption = e => {
    console.log("option select", e.currentTarget);
  };
  render() {
    const {
      listToDisplay,
      listName,
      display,
      value,
      label,
      onChange,
      ...rest
    } = this.props;
    return (
      <div className="form-group">
        <input
          className="form-control"
          value={value}
          list={listName}
          onChange={onChange}
          {...rest}
        />

        <datalist id={listName}>
          {listToDisplay.map(item => (
            <option value={item[display]} label={item[label]} />
          ))}
        </datalist>
      </div>
    );
  }
}

export default SeachableList;
