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
    reviews: []
  };

  async componentDidMount() {
    let { data: users } = await getUser();
    let user = users[0];
    let response = await getReviewsByUser(user.id);
    console.log(response);
    let reviews = response.data;
    console.log(typeof reviews, reviews);
    this.setState({ user, reviews }, () => {
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
      const renderReview = async review => {
        let restuarant = await getRestaurantById(review.restaurant_id);
        console.log("restaurant", restuarant);
        return (
          <div className="review">
            <div className="row">
              <div className="col">
                <div className="row">
                  <div className="col">
                    {review.comment} {review.rating}
                  </div>
                </div>
              </div>
            </div>
          </div>
        );
      };
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
