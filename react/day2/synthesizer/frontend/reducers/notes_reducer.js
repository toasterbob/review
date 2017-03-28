import {KEY_PRESSED, KEY_RELEASED, GROUP_UPDATE} from '../actions/notes_actions';
import {NOTE_NAMES} from '../util/tones';


const notesReducer = (state = [], action) => {
  let validNote = NOTE_NAMES.includes(action.key);
  Object.freeze(state);
  switch(action.type){
    case KEY_PRESSED:
      if (state.includes(action.key) || !validNote){
        return state;
      } else {
          return [...state, action.key];
      }
    case KEY_RELEASED:
      if (state.includes(action.key) && validNote){
        const idx = state.indexOf(action.key);
        let newState = [...state];
        newState.splice(idx, 1);
        return newState;
      } else {
          return state;
      }
    case GROUP_UPDATE:
      return action.notes;
    default:
      return state;
  }
};

export default notesReducer;
