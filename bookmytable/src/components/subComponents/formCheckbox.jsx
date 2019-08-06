import React, { Component } from "react";

class FormCheckbox extends Component {
  render() {
    const { label, xClass } = this.props;
    return (
      <div
        className={
          xClass
            ? "custom-control custom-checkbox " + xClass
            : "custom-control custom-checkbox"
        }
      >
        <input
          type="checkbox"
          className="custom-control-input"
          id="customCheck1"
        />
        <label className="custom-control-label" htmlFor="customCheck1">
          {label}
        </label>
      </div>
    );
  }
}

export default FormCheckbox;
