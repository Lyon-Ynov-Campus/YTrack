## Room is clean

### Instructions

Create a function `isMyRoomClean` that takes one boolean `check` as argument.
This function will return a `Promise` that will be resolved if `check` is true with the value `My room is clean`, 
or will be rejected if `check` is false with the value `My room is not clean`

This promise must take 1s to execute.

### Example

``` js
isMyRoomClean(true).then(res => console.log(res)) // "My room is clean" after 1s
isMyRoomClean(false).catch(err => console.log(err)) // "My room is not clean" after 1s
```

### Notions

- [javascript.info/settimeout-setinterval](https://javascript.info/settimeout-setinterval)
- [devdocs.io/javascript/global_objects/promise/promise](https://devdocs.io/javascript/global_objects/promise/promise)

