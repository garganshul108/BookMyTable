import React, { Component } from "react";

class RestaurantRegistration extends Component {
  state = {
    account: { name: "", email: "", password: "", confirmPassword: "" },
    errors: {}
  };
  render() {
    return (
      <div className="container">
        <div className="row">
          <div className="col">
            <div className="loginDiv">
              <small className="form-text text-muted">
                Welcome to BookMyTable.com
              </small>
              <h4>Add your Restaurant</h4>
              <form onSubmit={this.handleSubmit}>
                <div className="subForm">
                  <h6 className="title">Basic Information</h6>
                  <div className="subFormContainer">
                    <div className="form-group">
                      <input
                        value={this.state.account.name}
                        onChange={this.handleInputChange}
                        name="restName"
                        autoFocus
                        className="form-control"
                        placeholder="Restaurant's Name"
                      />
                      {this.state.errors.name && (
                        <div className="alert alert-danger">
                          <small>{this.state.errors.name}</small>
                        </div>
                      )}
                    </div>
                  </div>
                </div>

                <div className="form-group">
                  <input
                    value={this.state.account.name}
                    onChange={this.handleInputChange}
                    name="name"
                    autoFocus
                    className="form-control"
                    placeholder="Name"
                  />
                  {this.state.errors.name && (
                    <div className="alert alert-danger">
                      <small>{this.state.errors.name}</small>
                    </div>
                  )}
                </div>
                <div className="form-group">
                  <input
                    value={this.state.account.email}
                    onChange={this.handleInputChange}
                    name="email"
                    autoFocus
                    className="form-control"
                    id="exampleInputEmail1"
                    aria-describedby="emailHelp"
                    placeholder="Enter email"
                  />
                  {this.state.errors.email && (
                    <div className="alert alert-danger">
                      <small>{this.state.errors.email}</small>
                    </div>
                  )}
                  <small id="emailHelp" className="form-text text-muted">
                    We'll never share your email with anyone else.
                  </small>
                </div>
                <div className="form-group">
                  <input
                    value={this.state.account.password}
                    onChange={this.handleInputChange}
                    type="password"
                    name="password"
                    className="form-control"
                    id="exampleInputPassword1"
                    placeholder="Password"
                  />
                  {this.state.errors.password && (
                    <div>
                      <div className="alert alert-danger">
                        <small>{this.state.errors.password}</small>
                      </div>
                    </div>
                  )}
                </div>
                <div className="form-group">
                  <input
                    value={this.state.account.confirmPassword}
                    onChange={this.handleInputChange}
                    type="password"
                    name="confirmPassword"
                    className="form-control"
                    placeholder="Confirm Password"
                  />
                  {this.state.errors.confirmPassword && (
                    <div>
                      <div className="alert alert-danger">
                        <small>{this.state.errors.confirmPassword}</small>
                      </div>
                    </div>
                  )}
                </div>
                <button type="submit" className="btn btn-danger">
                  Submit
                </button>
              </form>
            </div>
          </div>
          <div className="col-4">Right Space</div>
        </div>
      </div>
    );
  }
}

export default RestaurantRegistration;
