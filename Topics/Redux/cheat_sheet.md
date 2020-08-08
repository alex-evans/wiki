## Terms
**Store:** Location of where the state is held
**Dispatch:** Sends actions to the store
**Action:** Action to perform
**Reducer:** Pure function that takes state and action and return a new state

## Notes
State is read-only

If app is getting complex do not split up a store (this breaks the rules for redux). Instead break up the reducers using `combineReducers()` and having those roll up into a root reducer that is used to pass into `createStore()`

## Examples
```
const REQUESTING_DATA = 'REQUESTING_DATA'
const RECEIVED_DATA = 'RECEIVED_DATA'

const requestingData = () => { return {type: REQUESTING_DATA} }
const receivedData = (data) => { return {type: RECEIVED_DATA, users: data.users} }

const handleAsync = () => {
  return function(dispatch) {
    // dispatch request action here
    dispatch(requestingData())
    setTimeout(function() {
      let data = {
        users: ['Jeff', 'William', 'Alice']
      }
      // dispatch received data action here
    dispatch(requestingData(data))
    }, 2500);
  }
};

const defaultState = {
  fetching: false,
  users: []
};

const asyncDataReducer = (state = defaultState, action) => {
  switch(action.type) {
    case REQUESTING_DATA:
      return {
        fetching: true,
        users: []
      }
    case RECEIVED_DATA:
      return {
        fetching: false,
        users: action.users
      }
    default:
      return state;
  }
};

const store = Redux.createStore(
  asyncDataReducer,
  Redux.applyMiddleware(ReduxThunk.default)
);
```
```
const INCREMENT = 'INCREMENT'; // define a constant for increment action types
const DECREMENT = 'DECREMENT'; // define a constant for decrement action types

const counterReducer = (state = 0, action) => {
  switch(action.type) {
    case INCREMENT:
      return (state += 1)

    case DECREMENT:
      return (state -= 1)
      
    default:
      return state
  }
}; // define the counter reducer which will increment or decrement the state based on the action it receives

const incAction = () => {
  return {
    type: INCREMENT
  }
}; // define an action creator for incrementing

const decAction = () => {
  return {
    type: DECREMENT
  }
}; // define an action creator for decrementing

const store = Redux.createStore(counterReducer); // define the Redux store here, passing in your reducers
```

## Immutability
Enforce state immutability in Redux
One way to do this is to use the spread operator: ...
`let newArray = [...oldArray];`

And for objects use Object.assign
`const newObject = Object.assign({}, obj1, obj2);`