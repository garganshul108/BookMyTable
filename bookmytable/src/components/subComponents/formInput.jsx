import React, { Component } from "react";

class FormInput extends Component {
  state = {};
  render() {
    const { name, placeholder } = this.props;
    return (
      <div className="form-group">
        <input
          value={name}
          onChange={this.handleInputChange}
          name={name}
          autoFocus
          className="form-control"
          placeholder={pla}
        />
        {this.state.errors.name && (
          <div className="alert alert-danger">
            <small>{this.state.errors.name}</small>
          </div>
        )}
      </div>
    );
  }
}

export default FormInput;
