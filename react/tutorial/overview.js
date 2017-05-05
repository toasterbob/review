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
