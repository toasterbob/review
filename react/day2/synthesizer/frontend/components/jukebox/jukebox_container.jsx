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
    let roll = track.roll;
    let playBackStartTime = Date.now();
    let currNote = 0;
    let timeElapsed;
    let interval;
    console.log(1);

    interval = setInterval(() => {
      console.log(1.5);
      if (currNote < roll.length){
        console.log(2);
        timeElapsed = Date.now() - playBackStartTime;
        if (timeElapsed >= roll[currNote].timeSlice) {
          dispatch(groupUpdate(roll[currNote.notes]));
          currNote++;
          console.log(3);
        }
      } else {
        console.log(4);
        clearInterval(interval);
        dispatch(stopPlaying());
      }
    }, 1);

    console.log(5);
  }

});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Jukebox);
