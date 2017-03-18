const reducer = (state = [], action) => {
  Object.freeze(state);
  switch(action.type) {
    case 'ADD_FRUIT':
      return [
        ...state,
        action.fruit
      ];
    case 'REMOVE_FRUIT':
      let newState = [...state];
      newState.pop();
      return newState;
    default:
      return state;
  }
};

export default reducer;
