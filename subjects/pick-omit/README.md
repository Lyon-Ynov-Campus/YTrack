## Pick Omit

### Instructions

Create a `pick` function that takes an object and keys.
This function create a new object that pick only the keys, in the second argument, from the object passed as argument.

Create a `omit` function that takes an object and keys.
This function create a new object that omit only the keys, in the second argument, from the object passed as argument.

> Those functions are pure and must not modify the given object

**Example**

``` js
pick({a: "s", b: "t"}, "b"); // Returns {b: "t"}
pick({a: "s", b: "t", c: "u"}, ["b", "c"]) // Returns {b: "t", c: "u"}  

omit({a: "s", b: "t"}, "b"); // Returns {a: "s"}
omit({a: "s", b: "t", c: "u"}, ["b", "c"]) // Returns {a: "s"}
```

### Notions

- [devdocs.io/javascript/global_objects/object](https://devdocs.io/javascript/global_objects/object)
- [devdocs.io/javascript/global_objects/array/includes](https://devdocs.io/javascript/global_objects/array/includes)