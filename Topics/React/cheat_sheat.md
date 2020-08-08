``` javascript
class DisplayMessages extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      input: '',
      messages: []
    };
    this.handleChange = this.handleChange.bind(this);
    this.submitMessage = this.submitMessage.bind(this);
  }
  // add handleChange() and submitMessage() methods here
  handleChange(e) {
    this.setState(
      {
        input: e.target.value,
        messages: this.state.messages
      }
    )
  };
  submitMessage(state) {
    this.setState(
      {
        input: '',
        messages: [...this.state.messages, this.state.input]
      }
    )
  };

  render() {
    return (
      <div>
        <h2>Type in a new Message:</h2>
        { /* render an input, button, and ul here */ }
        <input onChange={this.handleChange} value={this.state.input}></input>
        <button onClick={this.submitMessage}>Submit</button>
        <ul>
          {this.state.messages.map((msg, i) => <li key={i}>{msg}</li>)}
        </ul>
        { /* change code above this line */ }
      </div>
    );
  }
};
```

**if/else:** Just a typical if else javascript in the render portion

**&&:** `{condition && <p>markup</p>}`

**Ternary operator:** `(condition ? expressionIfTrue : expressionIfFalse)`

## Example (map / filter and full component using state)
``` javascript
class MyComponent extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      users: [
        {
          username: 'Jeff',
          online: true
        }
      ]
    }
  }
  render() {
    const usersOnline = this.state.users.filter(i => i.online == true);
    const renderOnline = usersOnline.map((i) => <li key={i.username + 1}>{i.username}</li>);
    return (
       <div>
         <h1>Current Online Users:</h1>
         <ul>
           {renderOnline}
         </ul>
       </div>
    );
  }
};
```

## Render Server Side HTML
`ReactDOMServer.renderToString(<App />)`