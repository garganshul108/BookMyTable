import React, { Component } from "react";
import RegistrationSubForm from "./registrationSubForm";
import FormInput from "./formInput";

class RestaurantBookingWindow extends Component {
  state = {};
  render() {
    return (
      <div
        className="bookingDiv"
        style={{ marginBottom: "100px", background: "white", padding: "10px" }}
      >
        <RegistrationSubForm title="1. Booking Details">
          <div className="row">
            <div className="col-4">
              <FormInput
                label="SELECT A DATE"
                // value={this.state.data.phone.std}
                // onChange={this.handleInputChange}
                name="date_of_arrival"
                data-parent="phone"
                type="date"
              />
            </div>
            <div className="col-4">
              <FormInput
                label="NO OF GUESTS"
                // value={this.state.data.phone.std}
                // onChange={this.handleInputChange}
                name="guests_count"
                data-parent="phone"
                type="number"
                min="0"
                max="20"
              />
            </div>
            <div className="col-4">
              <FormInput
                label="TIME"
                // value={this.state.data.phone.std}
                // onChange={this.handleInputChange}
                name="time_of_arrival"
                data-parent="phone"
                type="time"
              />
            </div>
          </div>
        </RegistrationSubForm>
        <RegistrationSubForm title="2. Guest details">
          <div className="row">
            <div className="col">
              {" "}
              <FormInput
                label="FIRST NAME"
                // value={this.state.data.phone.std}
                // onChange={this.handleInputChange}
                name="time_of_booking"
                data-parent="phone"
                placeholder="eg. Abbu"

                // type="time"
              />
            </div>
            <div className="col">
              {" "}
              <FormInput
                label="LAST NAME"
                // value={this.state.data.phone.std}
                // onChange={this.handleInputChange}
                name="time_of_booking"
                data-parent="phone"
                // type="text"
                placeholder="eg. Johannes"
              />
            </div>
          </div>
          <div className="row">
            <div className="col">
              {" "}
              <FormInput
                label="EMAIL"
                // value={this.state.data.phone.std}
                // onChange={this.handleInputChange}
                name="time_of_booking"
                data-parent="phone"
                type="email"
                placeholder="eg. abbu.johannes@mymail.com"
              />
            </div>
            <div className="col">
              {" "}
              <FormInput
                label="PHONE NO"
                // value={this.state.data.phone.std}
                // onChange={this.handleInputChange}
                name="time_of_booking"
                data-parent="phone"
                type="number"
                placeholder="eg. 9876543210"
              />
            </div>
          </div>
        </RegistrationSubForm>
        <button
          type="submit"
          style={{ width: "100%", marginTop: "20px" }}
          className="btn btn-success"
        >
          Submit
        </button>
      </div>
    );
  }
}

export default RestaurantBookingWindow;
