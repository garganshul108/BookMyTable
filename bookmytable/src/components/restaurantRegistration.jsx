import React, { Component } from "react";
import FormInput from "./subComponents/formInput";
import "../components/css/restaurantRegistration.css";

class RestaurantRegistration extends Component {
  state = {
    account: {
      restName: "",
      city: "",
      email: "",
      password: "",
      confirmPassword: ""
    },
    errors: {}
  };
  render() {
    return (
      <div className="container">
        <div className="row">
          <div className="col">
            <div className="restaurantRegistrationDiv">
              <small className="form-text text-muted">
                Welcome to BookMyTable.com
              </small>
              <h4>Add your Restaurant</h4>
              <form onSubmit={this.handleSubmit}>
                {/* Basic info form */}
                <div className="subForm">
                  <h6 className="title">Basic Information</h6>
                  <div className="subFormContainer">
                    <FormInput
                      label="NAME"
                      value={this.state.account.name}
                      onChange={this.handleInputChange}
                      name="restName"
                      placeholder="Enter Restaurant's Name..."
                      error={this.state.errors.restName}
                    />
                    <FormInput
                      label="CITY"
                      value={this.state.account.city}
                      onChange={this.handleInputChange}
                      name="city"
                      placeholder="Enter Location City..."
                      error={this.state.errors.city}
                    />
                    <div className="row">
                      <div className="col-3">
                        <FormInput
                          label="STD"
                          value={this.state.account.std}
                          onChange={this.handleInputChange}
                          name="std"
                          type="number"
                          placeholder="Area Code..."
                          error={this.state.errors.std}
                        />
                      </div>
                      <div className="col">
                        <FormInput
                          label="PHONE"
                          value={this.state.account.phone}
                          onChange={this.handleInputChange}
                          name="phone"
                          placeholder="Phone"
                          type="number"
                          error={this.state.errors.phone}
                        />
                      </div>
                    </div>
                    <FormInput
                      label="OPENING STATUS"
                      value={this.state.account.openingStatus}
                      onChange={this.handleInputChange}
                      name="openingStatus"
                      placeholder="Exisiting / Opening Soon"
                      error={this.state.errors.openingStatus}
                    />
                  </div>
                </div>
                {/* end of Basic info form */}
                {/* Location info form */}
                <div className="subForm">
                  <h6 className="title">Location</h6>
                  <div className="subFormContainer">
                    <FormInput
                      label="ADDRESS"
                      value={this.state.account.name}
                      onChange={this.handleInputChange}
                      name="restName"
                      placeholder="Enter Restaurant's Name..."
                      error={this.state.errors.restName}
                    />

                    <div className="row">
                      <div className="col-4">
                        <FormInput
                          label="LOCALITY"
                          value={this.state.account.std}
                          onChange={this.handleInputChange}
                          name="std"
                          type="number"
                          placeholder=""
                          error={this.state.errors.std}
                        />
                      </div>
                      <div className="col">
                        <FormInput
                          label="LOCALITY IN DETAIL"
                          value={this.state.account.phone}
                          onChange={this.handleInputChange}
                          name="phone"
                          placeholder="Phone"
                          error={this.state.errors.phone}
                        />
                      </div>
                    </div>
                    <FormInput
                      label="Establishment"
                      value={this.state.account.establishment}
                      onChange={this.handleInputChange}
                      name="establishment"
                      placeholder="Bar / Pub / Family Restaurant"
                      error={this.state.errors.establishment}
                    />
                  </div>
                </div>
                {/* end of Location info form */}
                {/* Characteristics info form */}
                <div className="subForm">
                  <h6 className="title">Characteristics</h6>
                  <div className="subFormContainer">
                    <div className="row">
                      <div className="col-4">
                        <FormInput
                          label="COST FOR TWO"
                          value={this.state.account.std}
                          onChange={this.handleInputChange}
                          name="std"
                          type="number"
                          placeholder=""
                          error={this.state.errors.std}
                        />
                      </div>
                      <div className="col">
                        <FormInput
                          label="LOCALITY IN DETAIL"
                          value={this.state.account.phone}
                          onChange={this.handleInputChange}
                          name="phone"
                          placeholder="Phone"
                          error={this.state.errors.phone}
                        />
                      </div>
                    </div>
                    <FormInput
                      label="Establishment"
                      value={this.state.account.establishment}
                      onChange={this.handleInputChange}
                      name="establishment"
                      placeholder="Bar / Pub / Family Restaurant"
                      error={this.state.errors.establishment}
                    />
                  </div>
                </div>
                {/* end of Characteristics info form */}

                <button
                  type="submit"
                  style={{ width: "100%" }}
                  className="btn btn-danger"
                >
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
