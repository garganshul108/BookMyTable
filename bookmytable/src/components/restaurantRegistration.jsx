import React, { Component } from "react";
import FormInput from "./subComponents/formInput";
import "../components/css/restaurantRegistration.css";
import FormCheckbox from "./subComponents/formCheckbox";

// import { captialize } from '../util/util';
/***
average_cost_for_two: 2000
cuisines: "Continental, Italian, North Indian, Chinese"
establishment: ["Bar"]
highlights: (13) ["Dinner", "Cash", "Credit Card", "Lunch", "Serves Alcohol", "Debit Card", "Nightlife", "Indoor Seating", "Table booking recommended", "DJ", "Fullbar", "Air Conditioned", "Smoking Area"]
location: {address: "Unit 1B & 1C, Upper Ground Floor-C, Building 10C, Cyber Hub, DLF Cyber City, Gurgaon", locality: "Cyber Hub, DLF Cyber City", city: "Gurgaon", city_id: 1, latitude: "28.4936741035", …}
name: "The Drunken Botanist"
phone_numbers: "011 66992206"
showMenu: false
showPhone: false
showTables: false
tables:
{size_eight: 1
size_four: 1
size_one: 1
size_six: 1
size_ten: 1
size_two: 1}
thumb: "https://b.zmtcdn.com/data/pictures/6/18649486/891f5711b0028057cdf834ca1fee9780.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A"
timings: "Mon-Sun (12 Noon to 1 AM)"
user_rating:{
aggregate_rating: "4.4"
votes: "5663"}
 */
class RestaurantRegistration extends Component {
  state = {
    data: {
      average_cost_for_two: "",
      cuisines: "",
      establishment: [],
      highlights: "",
      location: {
        address: {
          line_1: "",
          line_2: ""
        },
        locality: "",
        city: "",
        locality_verbose: "",
        zipcode: ""
      },
      name: "",
      phone: {
        std: "",
        number: ""
      },
      tables: {
        size_eight: "",
        size_four: "",
        size_one: "",
        size_six: "",
        size_ten: "",
        size_two: ""
      },

      thumb: "",
      timings: "",
      opening_status: "",
      email: "",
      website: "",
      days: {
        Monday: false,
        Tuesday: false,
        Wednesday: false,
        Thursday: false,
        Friday: false,
        Saturday: false,
        Sunday: false
      },
      slots: ""
    },
    errors: {},
    establishmentForm: {
      establishment: ""
    }
  };

  handleAddFormSubmit = e => {
    e.preventDefault();
    e.stopPropagation();
    // console.log(e.currentTarget);
    console.log("establishment", this.state[e.currentTarget.name]);
    let array = [...this.state.data[e.currentTarget.dataset.formAttr]];
    array.push(this.state[e.currentTarget.name]);
    this.setState({ [data[e.currentTarget.dataset.formAttr]]: array });
    this.setState;
  };

  handleAddFormInputChange = ({ currentTarget: input }) => {
    // console.log("EstbIN", e.currentTarget);
    // console.log(
    //   input.dataset.form,
    //   input.name,
    //   input.value,
    //   input.dataset.parent,
    //   input.dataset.gparent
    // );
    let tForm = { ...this.state[input.dataset.form] };
    // console.log(tForm);
    if (input.dataset.gparent) {
      tForm[input.dataset.gparent][input.dataset.parent][input.name] =
        input.value;
    } else if (input.dataset.parent) {
      tForm[input.dataset.parent][input.name] = input.value;
    } else {
      tForm[input.name] = input.value;
    }
    // console.log(tForm);
    this.setState({ [input.dataset.form]: tForm });
  };

  handleCheckboxChange = ({ currentTarget: checkbox }) => {
    console.log(
      "name " + checkbox.name,
      "\nch " + checkbox.checked,
      "\npa " + checkbox.dataset.parent,
      "\nga " + checkbox.dataset.gparent
    );
    let data = { ...this.state.data };
    if (checkbox.dataset.gparent) {
      data[checkbox.dataset.gparent][checkbox.dataset.parent][checkbox.name] =
        checkbox.checked;
    } else if (checkbox.dataset.parent) {
      data[checkbox.dataset.parent][checkbox.name] = checkbox.checked;
    } else {
      data[checkbox.name] = checkbox.checked;
    }
    this.setState({ data });
  };

  handleInputChange = ({ currentTarget: input }) => {
    console.log(
      input.name,
      input.value,
      input.dataset.parent,
      input.dataset.gparent
    );
    let data = { ...this.state.data };
    if (input.dataset.gparent) {
      data[input.dataset.gparent][input.dataset.parent][input.name] =
        input.value;
    } else if (input.dataset.parent) {
      data[input.dataset.parent][input.name] = input.value;
    } else {
      data[input.name] = input.value;
    }
    this.setState({ data });
  };

  handleSubmit = e => {
    e.preventDefault();
    console.log("submit form for registration", this.state.data);
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
                      value={this.state.data.name}
                      onChange={this.handleInputChange}
                      name="name"
                      placeholder="Enter Restaurant's Name"
                    />
                    <FormInput
                      label="CITY"
                      value={this.state.data.location.city}
                      name="city"
                      data-parent="location"
                      onChange={this.handleInputChange}
                      placeholder="Enter Location City"
                    />
                    <div className="row">
                      <div className="col-3">
                        <FormInput
                          label="STD"
                          value={this.state.data.phone.std}
                          onChange={this.handleInputChange}
                          name="std"
                          data-parent="phone"
                          type="number"
                          placeholder="Area Code..."
                        />
                      </div>
                      <div className="col">
                        <FormInput
                          label="PHONE"
                          value={this.state.data.phone.number}
                          onChange={this.handleInputChange}
                          name="number"
                          data-parent="phone"
                          placeholder="Phone"
                          type="number"
                        />
                      </div>
                    </div>
                    <FormInput
                      label="OPENING STATUS"
                      value={this.state.data.opening_status}
                      onChange={this.handleInputChange}
                      name="opening_status"
                      placeholder="Exisiting / Opening Soon"
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
                      value={this.state.data.location.address.line_1}
                      onChange={this.handleInputChange}
                      name="line_1"
                      data-parent="address"
                      data-gparent="location"
                    />
                    <FormInput
                      label="ADDRESS LINE 2"
                      value={this.state.data.location.address.line_2}
                      onChange={this.handleInputChange}
                      name="line_2"
                      data-parent="address"
                      data-gparent="location"
                    />

                    <div className="row">
                      <div className="col-4">
                        <FormInput
                          label="LOCALITY"
                          value={this.state.data.location.locality}
                          onChange={this.handleInputChange}
                          name="locality"
                          data-parent="location"
                        />
                      </div>
                      <div className="col">
                        <FormInput
                          label="LOCALITY IN DETAIL"
                          value={this.state.data.location.locality_verbose}
                          onChange={this.handleInputChange}
                          name="locality_verbose"
                          data-parent="location"
                        />
                      </div>
                      <div className="col-2">
                        <FormInput
                          label="ZIPCODE"
                          value={this.state.data.location.zipcode}
                          onChange={this.handleInputChange}
                          name="zipcode"
                          data-parent="location"
                          type="number"
                        />
                      </div>
                    </div>
                    <div className="row">
                      <div className="col">
                        <form
                          onSubmit={this.handleAddFormSubmit}
                          id="establishmentForm"
                          name="establishmentForm"
                        >
                          <div className="row">
                            <div className="col-8">
                              <FormInput
                                label="ESTABLISHMENT TYPE"
                                onChange={this.handleAddFormInputChange}
                                name="establishment"
                                data-form="establishmentForm"
                                value={
                                  this.state.establishmentForm.establishment
                                }
                                placeholder="Bar / Pub / Family Restaurant"
                              />
                            </div>
                            <div className="col">
                              <FormInput
                                label="&nbsp;"
                                value="ADD"
                                type="submit"
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
                          value={this.state.data.average_cost_for_two}
                          onChange={this.handleInputChange}
                          name="average_cost_for_two"
                          type="number"
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
                                placeholder="North Indian / Thai / Chinese"
                              />
                            </div>
                            <div className="col">
                              <FormInput
                                label="&nbsp;"
                                value="ADD"
                                type="submit"
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
                                placeholder="Pay by Card/ Cash / Five Star"
                              />
                            </div>
                            <div className="col">
                              <FormInput
                                label="&nbsp;"
                                value="ADD"
                                type="submit"
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
                                  value={this.state.data.tables.size_one}
                                  onChange={this.handleInputChange}
                                  name="size_one"
                                  data-parent="tables"
                                  type="number"
                                  min="0"
                                />
                              </td>
                            </tr>
                            <tr>
                              <td className="header">2</td>
                              <td className="data">
                                <FormInput
                                  value={this.state.data.tables.size_two}
                                  onChange={this.handleInputChange}
                                  name="size_two"
                                  data-parent="tables"
                                  type="number"
                                  min="0"
                                />
                              </td>
                            </tr>
                            <tr>
                              <td className="header">4</td>
                              <td className="data">
                                <FormInput
                                  value={this.state.data.tables.size_four}
                                  onChange={this.handleInputChange}
                                  name="size_four"
                                  data-parent="tables"
                                  type="number"
                                  min="0"
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
                                  value={this.state.data.tables.size_six}
                                  onChange={this.handleInputChange}
                                  name="size_six"
                                  data-parent="tables"
                                  type="number"
                                  min="0"
                                />
                              </td>
                            </tr>
                            <tr>
                              <td className="header">10</td>
                              <td className="data">
                                <FormInput
                                  value={this.state.data.tables.size_ten}
                                  onChange={this.handleInputChange}
                                  name="size_ten"
                                  data-parent="tables"
                                  type="number"
                                  min="0"
                                />
                              </td>
                            </tr>
                            <tr>
                              <td className="header">8</td>
                              <td className="data">
                                <FormInput
                                  value={this.state.data.tables.size_eight}
                                  onChange={this.handleInputChange}
                                  name="size_eight"
                                  data-parent="tables"
                                  type="number"
                                  min="0"
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

                {/* SLOT form */}
                <div className="subForm">
                  <h6 className="title">Slots Availabe</h6>
                  <div className="subFormContainer slots">
                    <div className="row">
                      <div className="col">
                        <div className="daysCheckboxDiv">
                          <FormCheckbox
                            label="Monday"
                            xClass="d-inline dayCheckbox"
                            checked={this.state.data.days.Monday}
                            name="Monday"
                            data-parent="days"
                            onChange={this.handleCheckboxChange}
                          />
                          <FormCheckbox
                            label="Tuesday"
                            xClass="d-inline dayCheckbox"
                            checked={this.state.data.days.Tuesday}
                            name="Tuesday"
                            data-parent="days"
                            onChange={this.handleCheckboxChange}
                          />
                          <FormCheckbox
                            label="Wednesday"
                            xClass="d-inline dayCheckbox"
                            checked={this.state.data.days.Wednesday}
                            name="Wednesday"
                            data-parent="days"
                            onChange={this.handleCheckboxChange}
                          />
                          <FormCheckbox
                            label="Thursday"
                            xClass="d-inline dayCheckbox"
                            checked={this.state.data.days.Thursday}
                            name="Thursday"
                            data-parent="days"
                            onChange={this.handleCheckboxChange}
                          />
                          <FormCheckbox
                            label="Friday"
                            xClass="d-inline dayCheckbox"
                            checked={this.state.data.days.Friday}
                            name="Friday"
                            data-parent="days"
                            onChange={this.handleCheckboxChange}
                          />
                          <FormCheckbox
                            label="Saturday"
                            xClass="d-inline dayCheckbox"
                            checked={this.state.data.days.Saturday}
                            name="Saturday"
                            data-parent="days"
                            onChange={this.handleCheckboxChange}
                          />
                          <FormCheckbox
                            label="Sunday"
                            xClass="d-inline dayCheckbox"
                            checked={this.state.data.days.Sunday}
                            name="Sunday"
                            data-parent="days"
                            onChange={this.handleCheckboxChange}
                          />
                        </div>
                      </div>
                    </div>
                    <div className="row">
                      <div className="col">
                        <form id="cuisineForm">
                          <div className="row">
                            <div className="col-4">
                              <FormInput label="START" type="time" />
                            </div>
                            <div className="col-4">
                              <FormInput label="END" type="Time" />
                            </div>
                            <div className="col">
                              <FormInput
                                label="&nbsp;"
                                value="ADD"
                                type="submit"
                              />
                            </div>
                          </div>
                        </form>
                      </div>
                    </div>
                  </div>
                </div>
                {/* end of slot form */}

                {/* CONTACT info form */}
                <div className="subForm">
                  <h6 className="title">Contact Info</h6>
                  <div className="subFormContainer contactInfo">
                    <div className="row">
                      <div className="col-6">
                        <FormInput
                          label="RESTAURANT EMAIL"
                          value={this.state.data.email}
                          onChange={this.handleInputChange}
                          name="email"
                          type="email"
                        />
                      </div>
                      <div className="col-6">
                        <FormInput
                          label="RESTAURANT WEBSITE"
                          value={this.state.data.website}
                          onChange={this.handleInputChange}
                          name="website"
                        />
                      </div>
                    </div>
                  </div>
                </div>
                {/* end of CONTACT info form */}

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
