import React, { Component } from "react";
import "./css/userProfile.css";
import { getUser } from "../services/userServices";
import { getReviewsByUser } from "../services/reviewServices";
import { getRestaurantById } from "../services/restaurantServices";

const tempProfile =
  "https://b.zmtcdn.com/data/user_profile_pictures/6e4/9f999a3334fd5ea937fa98f2843276e4.jpg?fit=around%7C300%3A300&crop=300%3A300%3B%2A%2C%2A";
class UserProfile extends Component {
  state = {
    user: {},
    reviews: [],
    beentheres: [],
    bookmarks: []
  };

  async componentDidMount() {
    let { data } = await getUser();
    console.log(data);
    data = data[0];
    let { beentheres, reviews, bookmarks } = data;
    delete data.beentheres;
    delete data.reviews;
    delete data.bookmarks;
    let user = data;

    for (let review of reviews) {
      review.photos = review.photos.map(
        photo => "http://localhost:5000/api/photos/" + photo + "?dir=review"
      );
    }

    this.setState({ user, reviews, beentheres, bookmarks }, () => {
      console.log("state userPROFILE", this.state);
    });
  }
  render() {
    const renderUserInfo = () => {
      return (
        <div className="row">
          <div className="col">
            <div className="userInfo">
              <div className="row">
                <div className="col-2">
                  <img
                    className="userThumbnail"
                    src={tempProfile}
                    alt="not Found"
                  />
                </div>
                <div className="col-1" />
                <div className="col">
                  <h1 style={{ fontWeight: "900" }}>{this.state.user.name}</h1>
                  <hr />
                  <table>
                    <tbody>
                      <tr>
                        <td className="text-center">
                          <i
                            class="fa fa-envelope text-warning"
                            aria-hidden="true"
                          />
                        </td>
                        <td>
                          <span
                            className="text-muted"
                            style={{ display: "block" }}
                          >
                            &nbsp;{this.state.user.email_id}
                          </span>
                        </td>
                      </tr>
                      <tr>
                        <td className="text-center">
                          <i
                            class="fa fa-map-marker text-danger"
                            aria-hidden="true"
                          />
                        </td>
                        <td>
                          <span
                            className="text-muted"
                            style={{ display: "block" }}
                          >
                            &nbsp;{this.state.user.city}
                          </span>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
      );
    };

    const renderUserHistory = () => {
      return (
        <div className="userHistory">
          <div className="row">
            <div className="col-4">
              <ul class="list-group">
                <li class="list-group-item options">Dineline</li>
                <li class="list-group-item options">Reviews</li>
                <li class="list-group-item options">Bookmarks</li>
                <li class="list-group-item options">Been There</li>
                <li class="list-group-item options">Recently Visited</li>
                <li class="list-group-item options">Bills</li>
              </ul>
            </div>
            <div className="col">
              <div className="displayHistoryElements">
                <div className="showingReviews">
                  <h5>Reviews</h5>
                  {this.state.reviews.map(review => (
                    <div className="reviewDiv">
                      <div className="row">
                        <div className="col-2">
                          <img
                            style={{ width: "100%" }}
                            src={review.restaurant.thumb}
                            alt="not Found"
                          />
                        </div>
                        <div className="col">
                          <h6 className="title">{review.restaurant.name}</h6>
                          <small>
                            <span className="text text-muted d-block">
                              {review.restaurant.locality}
                            </span>
                            <span className="text text-muted d-block">
                              {review.restaurant.city}
                            </span>
                          </small>
                        </div>
                      </div>
                      <div className="row my-3">
                        <div className="col">
                          <small className="text-muted">{review.date}</small>
                          <span className="d-block text-dark rateDisplay">
                            Rated:&nbsp;
                            <span className="badge badge-danger">
                              {review.rating}
                            </span>
                            &nbsp;{review.rating_text}
                          </span>
                          <span className="d-block comment">
                            {review.comment}
                          </span>
                        </div>
                        <div className="col-2">
                          {review.photos.map(photo => (
                            <img
                              src={photo}
                              style={{ width: "100%" }}
                              alt="Image not available"
                            />
                          ))}
                        </div>
                      </div>
                    </div>
                  ))}
                </div>
              </div>
            </div>
          </div>
        </div>
      );
    };

    return (
      <div className="container">
        <div className="dummy" />
        <div className="row">
          <div className="col">
            {renderUserInfo()}
            {renderUserHistory()}
          </div>
          <div className="col-2">.</div>
        </div>
      </div>
    );
  }
}

export default UserProfile;
