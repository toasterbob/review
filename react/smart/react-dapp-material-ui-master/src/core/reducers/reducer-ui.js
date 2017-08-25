import constants from 'core/types';

const initialState = {
  leftNavOpen : false,
  web3        : null
};

export function uiReducer(state = initialState, action) {
  switch (action.type) {

  case constants.INIT_APP:
    return Object.assign({}, state, {
      web3: action.web3
    });

  case constants.OPEN_NAV:
    return Object.assign({}, state, {
      leftNavOpen: true
    });

  case constants.CLOSE_NAV:
    return Object.assign({}, state, {
      leftNavOpen: false
    });

  default:
    return state;
  }
}
