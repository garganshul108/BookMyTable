import React, { Component } from "react";

class FormCheckbox extends Component {
  render() {
    const { label, xClass, checked } = this.props;
    return (
      <label className={xClass}>
        <input type="checkbox" checked={checked} />
        {label}
      </label>
    );
  }
}

export default FormCheckbox;
