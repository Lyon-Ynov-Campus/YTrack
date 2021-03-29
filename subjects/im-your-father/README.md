## I'm your father

### Instructions

Create a function `IAmYourFather` that takes a number `id` in argument.

This function must return a fetched promise using `fetch` API to make a GET HTTP request to `https://swapi.dev/api/people/${id}`. 

It is obvious you have to send the `id` passed in the function parameter to the Url.

The body of this request looks like :
``` json
{
    "name": "Obi-Wan Kenobi", 
    "height": "182", 
    "mass": "77", 
    "hair_color": "auburn, white", 
    "skin_color": "fair", 
    "eye_color": "blue-gray", 
    "birth_year": "57BBY", 
    "gender": "male"
}
```

The goal is to know whether or not the requested people is `Darth Vader` or `Luke Skywalker`.
* In the first case, the function must return:  `Luke, I am your father !` if it is `Darth Vader`
* If it is `Luke Skywalker` the function must return:  `No, that's not true, that's impossible !`
* Otherwise, if the requested people is not one of the two, the function must throw the message:  `I'm unknown in the world of this exercice`

**Example**

``` js
IAmYourFather(1).then((res) => console.log(res)) // this display message for Darth Vader
IAmYourFather(10).catch((res) => console.log(res)) // this display the unknow message in the carch scope
```

### Notions

* https://devdocs.io/dom/fetch_api/using_fetch
* https://developer.mozilla.org/fr/docs/Web/JavaScript/Reference/Statements/throw

### Code provided

> all code provided will be added to your solution and doesn't need to be submited.

```js
const fetch = require('node-fetch')
```
