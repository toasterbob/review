// What is React?
// React is a declarative, efficient, and flexible JavaScript library for building user interfaces.
//
// React has a few different kinds of components, but we'll start with React.Component subclasses:

class ShoppingList extends React.Component {
  render() {
    return (
      <div className="shopping-list">
        <h1>Shopping List for {this.props.name}</h1>
        <ul>
          <li>Instagram</li>
          <li>WhatsApp</li>
          <li>Oculus</li>
        </ul>
      </div>
    );
  }
}

// Example usage: <ShoppingList name="Mark" />

// Your components tell React what you want to render – then React will
// efficiently update and render just the right components when your data changes.

 // ShoppingList is a React component class, or React component type. A component
 // takes in parameters, called props, and returns a hierarchy of views to
 // display via the render method.

 // You can put any JavaScript expression within braces inside JSX. Each React
 // element is a real JavaScript object that you can store in a variable or
 // pass around your program.

 class Square extends React.Component {
   render() {
     return (
       <button className="square" onClick={() => alert("You clicked " + this.props.value)}>
         {this.props.value}
       </button>
     );
   }
 }
 // This uses the new JavaScript arrow function syntax. Note that we're passing
 // a function as the onClick prop. 
// Doing onClick={alert('click')} would alert immediately instead of when the button is clicked.
