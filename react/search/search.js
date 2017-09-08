class Autocomplete extends React.Component {

  constructor(props){
    super(props);
    this.state = {
      label: null,
      dataList: ["France", "Germany", "England"]
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
      list: this.state.dataList
    });
  }

  // on input change function
  onChange(event){
    // Anytime the input change, the State change
    // Anytime the state change, the component will be rendered with the new label
    this.setState({
      label: event.target.value
    });
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

//init the component into content
ReactDOM.render(
  <Autocomplete/>,
  document.getElementById('content')
);
