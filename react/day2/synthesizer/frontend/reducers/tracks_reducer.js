import { START_RECORDING, STOP_RECORDING, ADD_NOTES, DELETE_TRACK } from '../actions/tracks_actions';
import merge from 'lodash/merge';

let currTrackId = 0;

const tracksReducer = (state = [], action) => {
  Object.freeze(state);
  switch(action.type){
    case START_RECORDING:
      currTrackId++;
      return merge({}, state, {
      [currTrackId]: {
        id: currTrackId,
        name: `Track ${currTrackId}`,
        roll: [],
        timeStart: action.timeNow
      }
      });
    case STOP_RECORDING:
      return merge({}, state, {
        [currTrackId]: {
          roll: [
            ...state[currTrackId].roll,
            { notes: [], timeSlice: action.timeNow - state[currTrackId].timeStart }
          ]
        }
      });
    case ADD_NOTES:
      return merge({}, state, {
        [currTrackId]: {
          roll: [
            ...state[currTrackId].roll,
            { notes: action.notes, timeSlice: action.timeNow - state[currTrackId].timeStart }
          ]
        }
      });
    case DELETE_TRACK:
      let newState = merge({}, state);
      delete newState[action.track];
      return newState;
    default:
      return state;
  }
};

export default tracksReducer;
