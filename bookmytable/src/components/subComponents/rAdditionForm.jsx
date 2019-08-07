import React, { Component } from "react";

class RAdditionForm extends Component {
  state = {};
  render() {
    data-datakey="establishment"
    name="establishmentForm"
    data-formkey="establishment"
    
    label="ESTABLISHMENT TYPE"
    onChange={this.handleAdditionFormInputChange}
    name="establishment"
    data-form="establishmentForm"
    value={this.state.establishmentForm.establishment}
    placeholder="Bar / Pub / Family Restaurant"

    display:
    this.state.data.establishment
    
    return (
      <React.Fragment>
        <div className="row">
          <div className="col">
            <form
              onSubmit={this.handleAdditionFormSubmit}
              data-datakey="establishment"
              name="establishmentForm"
              data-formkey="establishment"
            >
              <div className="row">
                <div className="col-8">
                  <FormInput
                    label="ESTABLISHMENT TYPE"
                    onChange={this.handleAdditionFormInputChange}
                    name="establishment"
                    data-form="establishmentForm"
                    value={this.state.establishmentForm.establishment}
                    placeholder="Bar / Pub / Family Restaurant"
                  />
                </div>
                <div className="col">
                  <FormInput label="&nbsp;" value="ADD" type="submit" />
                </div>
              </div>
            </form>
          </div>
        </div>

        <div className="row">
          <div className="col">
            <div className="additionItemDisplay">
              {this.state.data.establishment.map(estb => {
                return (
                  <span className="badge badge-info">
                    <button
                      className="btn btn-sm btn-info"
                      type="button"
                      onClick={this.handleDeleteOption}
                      value={estb}
                    >
                      {estb}&nbsp;
                      <i className="fa fa-times" aria-hidden="true" />
                    </button>
                  </span>
                );
              })}
            </div>
          </div>
        </div>
      </React.Fragment>
    );
  }
}

export default RAdditionForm;
