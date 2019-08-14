import React, { Component } from "react";
import "../css/restaurant.css";
import RegistrationSubForm from "./registrationSubForm";

const placeholderContent =
  "Tip: A great review covers food, service, and ambience. Got recommendations for your favourite dishes and drinks, or something everyone should try here? Include that too! And remember, your review needs to be at least 140 characters long :)";
class ReviewInputForm extends Component {
  state = { rating: "", user: {}, desc: "", photos: [], photopath: "" };
  render() {
    return (
      <div className="reviewDiv">
        <h4 style={{ fontWeight: "900" }}>Add a Review</h4>
        <RegistrationSubForm>
          <div className="container">
            <div className="row">
              <div className="col-2">Logged User Profile Pic</div>
              <div className="col">
                <div className="ratingInput">
                  <span
                    className="text-muted"
                    style={{ fontWeight: "900", fontSize: "0.9rem" }}
                  >
                    YOUR RATING
                  </span>
                  <div>
                    <big style={{ fontSize: "2rem" }}>
                      <i class="fa fa-star text-danger" aria-hidden="true" />
                      <i class="fa fa-star text-danger" aria-hidden="true" />
                      <i class="fa fa-star text-warning" aria-hidden="true" />
                      <i class="fa fa-star text-warning" aria-hidden="true" />
                      <i class="fa fa-star text-warning" aria-hidden="true" />
                    </big>
                  </div>
                </div>
                <div>
                  <div class="form-group">
                    <textarea
                      class="form-control"
                      rows="3"
                      style={{ padding: "15px" }}
                      placeholder={placeholderContent}
                    />
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
      </div>
    );
  }
}

export default ReviewInputForm;
