```
class App extends React.Component {
    constructor(props);
}
render() {
    return (
        <div>
            Example
        </div>
    )
}
```

**if/else:** Just a typical if else javascript in the render portion

**&&:** `{condition && <p>markup</p>}`

**Ternary operator:** `(condition ? expressionIfTrue : expressionIfFalse)`

## Example (map / filter and full component using state)
```
class MyComponent extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      users: [
        {
          username: 'Jeff',
          online: true
        },
        {
          username: 'Alan',
          online: false
        },
        {
          username: 'Mary',
          online: true
        },
        {
          username: 'Jim',
          online: false
        },
        {
          username: 'Sara',
          online: true
        },
        {
          username: 'Laura',
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