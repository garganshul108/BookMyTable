import React, { Component } from "react";

class PhotoGallery extends Component {
  render() {
    return (
      <div className="photoDiv">
        <h4 style={{ fontWeight: "900" }}>Gallery</h4>
        <div className="container">
          <div className="row">
            <div className="col">
              <div className="gallery">
                <div>
                  {this.props.photos.map(photo => (
                    <img
                      src={photo}
                      className="img-rounded"
                      alt="Cinque Terre"
                    />
                  ))}
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    );
  }
}

export default PhotoGallery;
