import { connect } from 'react-redux';
import Recorder from './recorder';
import { startRecording, stopRecording, addNotes } from '../../actions/tracks_actions.js';

const mapStateToProps = state => ({
  tracks: state.tracks,
  isRecording: state.isRecording,
  isPlaying: state.isPlaying
});

const mapDispatchToProps = dispatch => ({
  startRecording: () => dispatch(startRecording()),
  stopRecording: () => dispatch(stopRecording())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Recorder);
