## Room is clean

### Instructions

Create a function `waitAndExecute` that takes a function `callback` in argument.

`waitAndExecute` returns a function that calls the `callback` function passing its arguments, one seconde after the function call.

**Example**

``` js
waitAndExecute(console.log)("hello", "world") // this display "hello world" after 1s
```

Create a function `isMyRoomClean` that takes one boolean `check` as argument.
This function will return a `Promise` that will be resolved if `check` is true with the value `My room is clean`, 
or will be rejected if `check` is false with the value `My room is not clean`

Your function must call `waitAndExecute` to simulate the time it takes to clean the room.

**Example**

``` js
isMyRoomClean(true).then(res => console.log(res)) // "My room is clean" after 1s
isMyRoomClean(false).catch(err => console.log(err)) // "My room is not clean" after 1s
```

### Notions

* https://javascript.info/settimeout-setinterval
* https://devdocs.io/javascript/global_objects/promise/promise

