// Instructor: Tim Garcia
//
// -Client side javascript library - component based architecture

<div id="app"></div>
<script src="https://unpkg.com/react@15/dist/react.js"></script>
<script src="https://unpkg.com/react-dom@15/dist/react-dom.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/babel-standalone/6.26.0/babel.js"></script>
<script type="text/babel">
  class Test extends React.Component {
    render() {
      return <div>Hello World 2</div>;
    }
  }
  ReactDOM.render(<Test />, document.getElementById("app"));
</script>
