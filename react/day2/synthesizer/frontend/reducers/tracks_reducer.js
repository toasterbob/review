import { START_RECORDING, STOP_RECORDING, ADD_NOTES } from '../actions/tracks_actions';
import { merge } from 'lodash/merge';

const tracksReducer = (state = [], action) => {
  Object.freeze(state);
  switch(action.type){
    case START_RECORDING:
    case STOP_RECORDING:
    case ADD_NOTES:
    default:
      return state;
  }
};

export default tracksReducer;
