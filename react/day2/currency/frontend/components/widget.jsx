import React from 'react';
import Currency from './currency';
import selectCurrency from '../actions';

class Widget extends React.Component {

  constructor(props) {
    super(props);
    this.forceUpdate = this.forceUpdate.bind(this);

    // require this component to re-render whenever the store's state changes
    this.props.store.subscribe(this.forceUpdate);
    this.currencies = ["USD", "EUR", "CAD", "JPY", "GBP", "CNY"];
    this.selectCurrency = selectCurrency.bind(this);
    this.state = { amount: ""};
    this.updateAmount = this.updateAmount.bind(this);
  }

  updateAmount(e){
    this.setState({amount: e.target.value});
  }

  fetchRates(currency) {
    $.ajax({
      url: `http://api.fixer.io/latest?base=${currency}`,
      type: "GET",
      dataType: "JSON",
      success: function(resp) {

        // tell the store to update with the new base currency and rates;
        // use the action creator 'selectCurrency' to build the object to
        // be dispatched
        this.props.store.dispatch(
          this.selectCurrency(resp.base, resp.rates)
        );
      }.bind(this)
    });
  }

  render() {

    // get the store's current state and deconstruct it into 'rates'
    // and 'baseCurrency' variables
    const { rates, baseCurrency } = this.props.store.getState();

    const currencyOptions = this.currencies.map( (currency) => (
        <div onClick={ () => { this.fetchRates(currency) }}
             key={currency}
             className="currency-option">
          {currency}
        </div>
      )
    );

    const amount = this.state.amount === "" ? 1 : parseFloat(this.state.amount);
    const currencyNames = Object.keys(rates);
    const currencyRates = currencyNames.map( (currency) => (
      <Currency name={currency}
                rate={rates[currency]}
                key={currency}
                amount={amount}/>
      )
    );

    return (
      <div>
        <h1>Currency Exchange Rates</h1>
        <h3>Base Currency: {baseCurrency}</h3>
        <div className="currency-selector">
          Get Rates:
          {currencyOptions}
        </div>

        <br/>
        <br/>
        Amount <input onChange={this.updateAmount} value={this.state.amount}></input>
        <div className="rates-list">
          {currencyRates}
        </div>
      </div>
    );
  }
};


export default Widget;
