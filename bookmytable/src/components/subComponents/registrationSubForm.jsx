import React, { Component } from "react";

class RegistrationSubForm extends Component {
  render() {
    const { label } = this.props;
    return (
      <React.Fragment>
        <h1>{label}</h1>
        {this.props.children}
      </React.Fragment>
    );
  }
}

export default RegistrationSubForm;
