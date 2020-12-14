Discovery Packages: https://pkg.go.dev/

Example routine:
```
package main

import "fmt"

import "rsc.io/quote"

func main() {
	fmt.Println(quote.Go())
}
```

`:=` operator declares a variable and sets it all in one step
`[]string` when declaring a variable states it as a **slice** which allows you to omit sizing information for an array
`messages := make(map[key-type]value-type)` map is similar to a dictionary in Python

When two or more consecutive named function parameters share a type, you can omit the type from all but the last.
```
func add(x, y int) int {
	return x + y
}
```

*FOR LOOP:*
```
for {init}; {condition}; {post} {
	...
}
```

*SWITCH:*
```
switch i {
	case 0:
		...
	case f():
		...
	default:
		...
}
```

*QUICK NOTES:*
* A function whose name starts with a capital letter can be called by a function not in the same package. (Exported name)
* Code executed as an application must go in a main package.
* I'm liking the packaging directly in the code (running Go will pull packages as it sees necessary) as opposed to Python where that's all done ahead of time with pip and seems to be a mess of a function. I could see the probably of the code changing on you when you don't want it to but there has to be ways to pin versions and this would force you to do it where in Python it'd be only when someone new installs your requirements that you'd hit it.

*TESTING EXAMPLE:*
```
package greetings

import (
    "testing"
    "regexp"
)

// TestHelloName calls greetings.Hello with a name, checking 
// for a valid return value.
func TestHelloName(t *testing.T) {
    name := "Gladys"
    want := regexp.MustCompile(`\b`+name+`\b`)
    msg, err := Hello("Gladys")
    if !want.MatchString(msg) || err != nil {
        t.Fatalf(`Hello("Gladys") = %q, %v, want match for %#q, nil`, msg, err, want)
    }
}
```