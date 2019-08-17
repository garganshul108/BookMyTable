import React, { Component } from "react";
import "../css/restaurant.css";
import RegistrationSubForm from "./registrationSubForm";
import RatingStar from "./ratingStar";

const placeholderContent =
  "Tip: A great review covers food, service, and ambience. Got recommendations for your favourite dishes and drinks, or something everyone should try here? Include that too! And remember, your review needs to be at least 140 characters long :)";
class ReviewInputForm extends Component {
  state = {
    data: { rating: "", user: {}, comment: "", photos: [] },
    photopath: "",
    ratingArray: [
      { value: "1", trueClass: "text-danger" },
      { value: "2", trueClass: "text-danger" },
      { value: "3", trueClass: "text-warning" },
      { value: "4", trueClass: "text-warning" },
      { value: "5", trueClass: "text-primary" }
    ]
  };
  /***
   * 
   * finalData = {
    "comment": "sdfsfssssssssssssssssssssssssssssssssssssssssssssssssssssssss",
    "rating": 1,
    "rating_text": "Excellent",
    "photos": ["adfb"],
    "restaurant_id": 19151039,
    "date": "12/08/2019",
    "time": "12:00"
  }
   */
  handleInputChange = ({ currentTarget: input }) => {
    // console.log(
    //   input.name,
    //   input.value,
    //   input.dataset.parent,
    //   input.dataset.gparent
    // );
    let data = { ...this.state.data };
    if (input.dataset.gparent) {
      data[input.dataset.gparent][input.dataset.parent][input.name] =
        input.value;
    } else if (input.dataset.parent) {
      data[input.dataset.parent][input.name] = input.value;
    } else {
      data[input.name] = input.value;
    }
    this.setState({ data }, console.log(this.state.data));
  };

  setRating = rate => {
    let { data } = this.state;
    data.rating = rate;
    this.setState({ data }, console.log(this.state.data));
  };

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
                      {this.state.ratingArray.map(rate => (
                        <RatingStar
                          rate={rate.value}
                          baseClass="fa fa-star"
                          trueClass={rate.trueClass}
                          falseClass="text-secondary"
                          currentRate={this.state.data.rating}
                          style={{ cursor: "pointer" }}
                          onClick={({ currentTarget }) => {
                            this.setRating(currentTarget.dataset.value);
                          }}
                        />
                      ))}
                    </big>
                  </div>
                </div>
                <div>
                  <div className="form-group">
                    <textarea
                      value={this.state.data.comment}
                      onChange={this.handleInputChange}
                      className="form-control"
                      name="comment"
                      rows="4"
                      style={{ padding: "15px" }}
                      placeholder={placeholderContent}
                    />
                  </div>
                </div>
                <div>
                  <form>
                    <div className="custom-file">
                      <input
                        type="file"
                        className="custom-file-input"
                        id="customFile"
                        onChange={e => {
                          console.log(e.target.files);
                          // this.setState({ photopath: t.value });
                        }}
                      />
                      <label className="custom-file-label" htmlFor="customFile">
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
