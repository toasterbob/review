import { START_RECORDING, STOP_RECORDING, ADD_NOTES } from '../actions/tracks_actions';
import { merge } from 'lodash/merge';

let currTrackId = 0;


const tracksReducer = (state = [], action) => {
  Object.freeze(state);
  switch(action.type){
    case START_RECORDING:
      currTrackId++;
      return merge ({}, state, {
        id: currTrackId,
        name: `Track ${currTrackId}`,
        roll: [],
        timeStart: action.timeNow
      });
    case STOP_RECORDING:
      return merge ({}, state, {
        roll: [
          ...state.roll,
          { notes: [], timeSlice: action.timeNow - state.timeStart }
        ]
      });
    case ADD_NOTES:
      return merge ({}, state, {
        roll: [
          ...state.roll,
          { notes: action.notes, timeSlice: action.timeNow - state.timeStart }
        ]
      });
    default:
      return state;
  }
};

export default tracksReducer;
