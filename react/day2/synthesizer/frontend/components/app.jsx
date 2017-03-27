import React from 'react';
import SynthContainer from './synth/synth_container';
import RecorderContainer from './recorder/recorder_container';

const App = () => (
    <div className='app'>
      <SynthContainer />
      <RecorderContainer />
    </div>
);

export default App;
