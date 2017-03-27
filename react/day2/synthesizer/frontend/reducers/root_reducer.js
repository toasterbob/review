import { combineReducers } from 'redux';
import notesReducer from './notes_reducer';
import tracksReducer from './tracks_reducer';
import isRecordingReducer from './is_recording_reducer';

const rootReducer = combineReducers({
  notes: notesReducer
});

export default rootReducer;
