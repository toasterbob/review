class Autocomplete extends React.Component {
  
  constructor(props){
    super(props);
    this.state = {
      label: this.getOption("defaultValue"),
      dataList: this.getOption("values")
    };
  }
  
  // on component loading
  componentDidMount(){
    this.initAwesomplete();
  }
  
  // Init awesomplete
  initAwesomplete(){
    var input = document.getElementById("autocomplete");
    //use Awesomplete lib
    new Awesomplete(input, {
      list: this.state.dataList,
      replace: this.onReplace(input),
      autoFirst: this.getOption("autoFirst")
    });
  }
  
  // anytime the awesomplete replace, the state and parent form data change
  onReplace(input) {
    return ((item) => {
      // use the Form parent function
      this.props.onChange(item.value);
      this.setState({label: item.label});
    }).bind(this);
  }
  
  // on input change function
  onChange(event){
    // Anytime the input change, the State change
    // Anytime the state change, the component will be rendered with the new label
    this.setState({
      label: event.target.value
    });
  }
  
  // get default options based on props
  getDefaultOptions(){
    const props = this.props;
    return {
      // when popup open, first item is selected
      "autoFirst": props["autoFirst"]?props["autoFirst"]:false,
      // value to display on first init
      "defaultValue": props["defaultValue"]?props["defaultValue"]:null,
      // values to display in the popup
      "values": props["values"]?props["values"]:null,
      // minimum character before popup open
      "minChar": props["minChar"]?props["minChar"]:2
    };
  }
  
  // get option with name
  getOption(optionName){
    return this.options[optionName];
  }
  
  // get all options
  get options(){
    if(!this._options){
      this._options = this.getDefaultOptions();
    }
    return this._options;
  }
 
  render(){
    return (
      <div>
        Here:
        <input 
          value={this.state.label}
          className='form-control'
          id={"autocomplete"} 
          onChange={this.onChange.bind(this)}
          />
      </div>
    );
  }
}

// The form parent will get the data and display it
class Form extends React.Component {
  
  constructor(props){
    super(props);
    const defaultValue = "France";
    this.state = {
      formData: defaultValue,
      defaultValue: defaultValue,
      selectData: ["France", "Germany", "England", "Autralia", "Austria", "Finland"]
    };
  }
  
  // function given to the autocomplete and used by it, it will be used by AutoComplete
  // and return the value
  onChange(newValue){
    this.setState({
      formData: newValue
    });
  }
  
  render(){
    const infoList = this.state.selectData.join(' or ');
    return (
      <div>
				<div className="panel panel-default">
				  <div className="panel-heading"><strong>What's next ?</strong></div>
				  <div className="panel-body">
				    Now Type: {infoList}
				  </div>
				</div>
        <div className="well">The current Form data is: <strong>{this.state.formData}</strong></div>
        <Autocomplete 
          onChange={this.onChange.bind(this)} 
          defaultValue={this.state.defaultValue}
          autoFirst={true}
          values={this.state.selectData}
        />
      </div>
    );
  }
}

//init the component into content
ReactDOM.render(
  <Form/>,
  document.getElementById('content')
);