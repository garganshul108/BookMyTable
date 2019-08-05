import React, { Component } from "react";

import "./css/login.css";
import welcomeback from "./images/welcomeback.jpg";

class Login extends Component {
  render() {
    return (
      <div
        className="container-fluid"
        style={{ width: "100%", height: "100%", padding: "0" }}
      >
        <div
          className="row"
          style={{ margin: "0", width: "100%", height: "100%" }}
        >
          <div className="col" />
          <div className="col-5 loginContainer">
            <button onClick={this.props.closeTab} className="btn btn-danger">
              <i className="fa fa-times" aria-hidden="true" />
            </button>
            <div className="loginDiv">
              <small class="form-text text-muted">Already a User?</small>
              <h4>Login to continue</h4>
              <form>
                <div className="form-group">
                  {/* <label htmlFor="exampleInputEmail1">Email address</label> */}
                  <input
                    type="email"
                    autoFocus
                    className="form-control"
                    id="exampleInputEmail1"
                    aria-describedby="emailHelp"
                    placeholder="Enter email"
                  />
                  <small id="emailHelp" className="form-text text-muted">
                    We'll never share your email with anyone else.
                  </small>
                </div>
                <div className="form-group">
                  {/* <label htmlFor="exampleInputPassword1">Password</label> */}
                  <input
                    type="password"
                    className="form-control"
                    id="exampleInputPassword1"
                    placeholder="Password"
                  />
                </div>
                {/* <div className="form-group form-check">
                  <input
                    type="checkbox"
                    className="form-check-input"
                    id="exampleCheck1"
                  />
                  <label className="form-check-label" htmlFor="exampleCheck1">
                    Check me out
                  </label>
                </div> */}
                <button type="submit" className="btn btn-danger">
                  Submit
                </button>
              </form>
            </div>
            <img src={welcomeback} alt="happy image" />
          </div>
        </div>
      </div>
    );
  }
}

export default Login;
