import React, { Component } from "react";
import FormInput from "./subComponents/formInput";
import "../components/css/restaurantRegistration.css";
import FormCheckbox from "./subComponents/formCheckbox";

// import { captialize } from '../util/util';

class RestaurantRegistration extends Component {
  state = {
    account: {
      restName: "",
      city: "",
      email: "",
      password: "",
      confirmPassword: "",
      tableSize: { ten: "" }
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
                      label="ADDRESS LINE 1"
                      // value={this.state.account.name}
                      onChange={this.handleInputChange}
                      // name="restName"
                      // placeholder="Enter Restaurant's Name..."
                      // error={this.state.errors.restName}
                    />
                    <FormInput
                      label="ADDRESS  LINE 2"
                      // value={this.state.account.name}
                      onChange={this.handleInputChange}
                      // name="restName"
                      // placeholder="Enter Restaurant's Name..."
                      // error={this.state.errors.restName}
                    />

                    <div className="row">
                      <div className="col-4">
                        <FormInput
                          label="LOCALITY"
                          // value={this.state.account.std}
                          onChange={this.handleInputChange}
                          // name="std"
                          // type="number"
                          // placeholder=""
                          // error={this.state.errors.std}
                        />
                      </div>
                      <div className="col">
                        <FormInput
                          label="LOCALITY IN DETAIL"
                          // value={this.state.account.phone}
                          onChange={this.handleInputChange}
                          // name="phone"
                          // placeholder="Phone"
                          // error={this.state.errors.phone}
                        />
                      </div>
                      <div className="col-2">
                        <FormInput
                          label="ZIPCODE"
                          // value={this.state.account.phone}
                          onChange={this.handleInputChange}
                          // name="phone"
                          // placeholder="Phone"
                          // error={this.state.errors.phone}
                        />
                      </div>
                    </div>
                    <div className="row">
                      <div className="col">
                        <form id="establishmentForm">
                          <div className="row">
                            <div className="col-8">
                              <FormInput
                                label="ESTABLISHMENT TYPE"
                                // value={this.state.account.std}
                                // onChange={this.handleInputChange}
                                // name="std"
                                // type="dropdown"
                                placeholder="Bar / Pub / Family Restaurant"
                                // error={this.state.errors.std}
                                // min="09:00"
                                // max="18:00"
                              />
                            </div>
                            <div className="col">
                              <FormInput
                                label="&nbsp;"
                                value="ADD"
                                // onChange={this.handleInputChange}
                                // name="std"
                                type="submit"
                                // placeholder=""
                                // error={this.state.errors.std}
                                // min="09:00"
                                // max="18:00"
                              />
                            </div>
                          </div>
                        </form>
                      </div>
                    </div>
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
                          // value={this.state.account.std}
                          onChange={this.handleInputChange}
                          // name="std"
                          type="number"
                          // placeholder=""
                          // error={this.state.errors.std}
                        />
                      </div>
                      <div className="col" />
                    </div>
                    <div className="row">
                      <div className="col">
                        <form id="cuisineForm">
                          <div className="row">
                            <div className="col-8">
                              <FormInput
                                label="CUISINES AVAILABLE"
                                // value={this.state.account.std}
                                // onChange={this.handleInputChange}
                                // name="std"
                                // type="dropdown"
                                placeholder="North Indian / Thai / Chinese"
                                // error={this.state.errors.std}
                                // min="09:00"
                                // max="18:00"
                              />
                            </div>
                            <div className="col">
                              <FormInput
                                label="&nbsp;"
                                value="ADD"
                                // onChange={this.handleInputChange}
                                // name="std"
                                type="submit"
                                // placeholder=""
                                // error={this.state.errors.std}
                                // min="09:00"
                                // max="18:00"
                              />
                            </div>
                          </div>
                        </form>
                      </div>
                    </div>
                    <div className="row">
                      <div className="col">
                        <form id="featuresForm">
                          <div className="row">
                            <div className="col-8">
                              <FormInput
                                label="FEATURES AVAILABLE"
                                // value={this.state.account.std}
                                // onChange={this.handleInputChange}
                                // name="std"
                                // type="dropdown"
                                placeholder="Pay by Card/ Cash / Five Star"
                                // error={this.state.errors.std}
                                // min="09:00"
                                // max="18:00"
                              />
                            </div>
                            <div className="col">
                              <FormInput
                                label="&nbsp;"
                                value="ADD"
                                // onChange={this.handleInputChange}
                                // name="std"
                                type="submit"
                                // placeholder=""
                                // error={this.state.errors.std}
                                min="09:00"
                                max="18:00"
                              />
                            </div>
                          </div>
                        </form>
                      </div>
                    </div>
                  </div>
                </div>
                {/* end of Characteristics info form */}
                {/* Capacity info form */}
                <div className="subForm">
                  <h6 className="title">Capacity</h6>
                  <small
                    className="text text-muted"
                    style={{ textTransform: "captialize !important" }}
                  >
                    FULL HOUSE
                  </small>
                  <div className="subFormContainer capacity">
                    <div className="row">
                      <div className="col-6">
                        <table>
                          <tbody>
                            <tr>
                              <td className="header">1</td>
                              <td className="data">
                                <FormInput
                                  value={this.state.account.tableSize.ten}
                                  onChange={this.handleInputChange}
                                  name="phone"
                                  type="number"
                                  error={this.state.errors.phone}
                                />
                              </td>
                            </tr>
                            <tr>
                              <td className="header">2</td>
                              <td className="data">
                                <FormInput
                                  value={this.state.account.tableSize.ten}
                                  onChange={this.handleInputChange}
                                  name="phone"
                                  type="number"
                                  error={this.state.errors.phone}
                                />
                              </td>
                            </tr>
                            <tr>
                              <td className="header">4</td>
                              <td className="data">
                                {" "}
                                <FormInput
                                  value={this.state.account.tableSize.ten}
                                  onChange={this.handleInputChange}
                                  name="phone"
                                  type="number"
                                  error={this.state.errors.phone}
                                />
                              </td>
                            </tr>
                          </tbody>
                        </table>
                      </div>
                      <div className="col-6">
                        <table>
                          <tbody>
                            <tr>
                              <td className="header">6</td>
                              <td className="data">
                                <FormInput
                                  value={this.state.account.tableSize.ten}
                                  onChange={this.handleInputChange}
                                  name="phone"
                                  type="number"
                                  error={this.state.errors.phone}
                                />
                              </td>
                            </tr>
                            <tr>
                              <td className="header">10</td>
                              <td className="data">
                                <FormInput
                                  value={this.state.account.tableSize.ten}
                                  onChange={this.handleInputChange}
                                  name="phone"
                                  type="number"
                                  error={this.state.errors.phone}
                                />
                              </td>
                            </tr>
                            <tr>
                              <td className="header">12</td>
                              <td className="data">
                                <FormInput
                                  value={this.state.account.tableSize.ten}
                                  onChange={this.handleInputChange}
                                  name="phone"
                                  type="number"
                                  error={this.state.errors.phone}
                                />
                              </td>
                            </tr>
                          </tbody>
                        </table>
                      </div>
                    </div>
                  </div>
                </div>
                {/* end of Capacity info form */}

                {/* Slot info form */}
                <div className="subForm">
                  <h6 className="title">Contact Info</h6>
                  <div className="subFormContainer contactInfo">
                    <div className="row">
                      <div className="col-6">
                        <FormInput
                          label="RESTAURANT EMAIL"
                          // value={this.state.account.std}
                          // onChange={this.handleInputChange}
                          // name="std"
                          type="email"
                          // placeholder=""
                          // error={this.state.errors.std}
                        />
                      </div>
                      <div className="col-6">
                        <FormInput
                          label="RESTAURANT WEBSITE"
                          // value={this.state.account.std}
                          // onChange={this.handleInputChange}
                          // name="std"
                          // placeholder=""
                          // error={this.state.errors.std}
                        />
                      </div>
                    </div>
                  </div>
                </div>
                {/* end of Slot info form */}

                <button
                  type="submit"
                  style={{ width: "100%", marginTop: "20px" }}
                  className="btn btn-success"
                >
                  Submit
                </button>
              </form>
            </div>
          </div>
          <div className="col-4">
            <small className="form-text text-muted">Happy to have you!</small>
            <h4>HELP!</h4>
            <div className="registrationInstructions">
              <strong> How it works</strong>
              <br />
              <ul>
                <li>
                  If you are the owner of a restaurant, or a representative, let
                  us know using this form.
                </li>
                <li>
                  Once you send the information to us, our awesome content team
                  will verify it. To help speed up the process, please provide a
                  contact number or email address.
                </li>
                <li>
                  That's it! Once verified the listing will start appearing
                  on&nbsp;<strong>BookMyTable.com</strong>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    );
  }
}

export default RestaurantRegistration;
