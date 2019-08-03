import React, { Component } from "react";
import { getAds } from "../../api/dump/ads";

class SideAds extends Component {
  state = { ads: [] };
  componentDidMount() {
    let ads = getAds();
    this.setState({ ads });
  }
  render() {
    const { ads } = this.state;
    return (
      <React.Fragment>
        {ads.length > 0 &&
          ads.map(ad => (
            <img
              style={{
                width: "100%",
                borderRadius: "5px",
                marginBottom: "10px"
              }}
              key={ad._id}
              src={ad.src}
            />
          ))}
      </React.Fragment>
    );
  }
}

export default SideAds;
