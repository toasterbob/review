import React, { Component }       from 'react';
import { connect }                from 'react-redux';
import { bindActionCreators }     from 'redux'
import injectTapEventPlugin       from 'react-tap-event-plugin';
import getMuiTheme                from 'material-ui/styles/getMuiTheme';
import MuiThemeProvider           from 'material-ui/styles/MuiThemeProvider';
import { BrowserRouter, Route }   from 'react-router-dom'
import * as OfflinePluginRuntime  from 'offline-plugin/runtime';

/* actions */
import * as uiActionCreators from 'core/actions/actions-ui'

// global styles for entire app
import './styles/app.scss';

/* application containers */
import Header     from 'containers/Header';
import LeftNavBar from 'containers/LeftNavBar';
import Home       from 'containers/Home';

injectTapEventPlugin();

OfflinePluginRuntime.install();

export class App extends Component {
  constructor(props) {
    super(props);
  }

  componentDidMount(){
    // Initialize web3 and set the provider to the testRPC.
    this.props.actions.ui.initApp();

    console.log(window.web3);
  }

  render() {
    return (
      <MuiThemeProvider muiTheme={getMuiTheme()}>
        <div>
          <Header />
          <div className="container">
            <BrowserRouter>
              <div>
                <Route exact path="/" component={Home}/>
              </div>
            </BrowserRouter>
          </div>
          <LeftNavBar />
        </div>
      </MuiThemeProvider>
    );
  }
}

function mapDispatchToProps(dispatch){
  return {
    actions: {
      ui: bindActionCreators(uiActionCreators, dispatch)
    }
  }
}

export default connect(null, mapDispatchToProps)(App);
