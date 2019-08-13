import React, { Component } from "react";
import RegistrationSubForm from "./registrationSubForm";

class ReviewInputForm extends Component {
  state = { rating: "", user: {}, desc: "", photos: [], photopath: "" };
  render() {
    return (
      <RegistrationSubForm>
        <div className="container">
          <div className="row">
            <div className="col-2">Logged User Profile Pic</div>
            <div className="col">
              <div>Rating Div</div>
              <div>
                <div class="form-group">
                  <textarea class="form-control" rows="3" />
                </div>
              </div>
              <div>
                <form>
                  <div class="custom-file">
                    <input
                      type="file"
                      class="custom-file-input"
                      id="customFile"
                      onChange={e => {
                        console.log(e.target.files);
                        // this.setState({ photopath: t.value });
                      }}
                    />
                    <label class="custom-file-label" htmlFor="customFile">
                      {this.state.photopath
                        ? this.state.photopath
                        : "Choose file"}
                    </label>
                  </div>
                </form>
              </div>
              <button
                type="submit"
                style={{ width: "100%", marginTop: "20px" }}
                className="btn btn-success"
              >
                Submit
              </button>
            </div>
          </div>
        </div>
      </RegistrationSubForm>
    );
  }
}

export default ReviewInputForm;
