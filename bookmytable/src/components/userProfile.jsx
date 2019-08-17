import React, { Component } from "react";
import "./css/userProfile.css";
import { getUser } from "../services/userServices";

const tempProfile =
  "https://b.zmtcdn.com/data/user_profile_pictures/6e4/9f999a3334fd5ea937fa98f2843276e4.jpg?fit=around%7C300%3A300&crop=300%3A300%3B%2A%2C%2A";
class UserProfile extends Component {
  state = {
    user: {}
  };

  async componentDidMount() {
    try {
      let { data } = await getUser();
      let user = data[0];
      // console.log(user);
      this.setState({ user }, () => console.log(this.state));
    } catch (ex) {}
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
            <div className="col" />
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
