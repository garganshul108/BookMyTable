import React, { Component } from "react";

class SearchBox extends Component {
  render() {
    const { value, onChange, ...rest } = this.props;
    return (
      <div className="form-group">
        <div class="input-group mb-3">
          <div class="input-group-prepend">
            <span class="input-group-text" id="basic-addon1">
              <i className="fa fa-search" aria-hidden="true" />
            </span>
          </div>

          <input
            value={value}
            className="form-control"
            onChange={e => onChange(e.currentTarget.value)}
            {...rest}
          />
        </div>
      </div>
    );
  }
}

export default SearchBox;
