import { connect } from 'react-redux';
import Recorder from './recorder';
import { startRecording, stopRecording, addNotes } from '../../actions/track_actions.js';

const mapStateToProps = state => ({
  tracks: state.tracks,
  isRecordingReducer: state.isRecording
});

const mapDispatchToProps = dispatch => ({
  startRecording: () => dispatch(startRecording()),
  stopRecording: () => dispatch(stopRecording())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Recorder);
