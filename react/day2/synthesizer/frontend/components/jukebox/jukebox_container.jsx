import { connect } from 'react-redux';
import { startPlaying, stopPlaying} from '../../actions/playing_actions';
import { groupUpdate } from '../../actions/notes_actions';
import Jukebox from './jukebox';

const mapStateToProps = state => ({
  tracks: state.tracks,
  isRecording: state.isRecording,
  isPlaying: state.isPlaying
});

const mapDispatchToProps = dispatch => ({
  onPlay: track => e => {
    dispatch(startPlaying());
  }
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Jukebox);
