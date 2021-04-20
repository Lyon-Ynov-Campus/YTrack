## Get Json

### Instructions

In this exercise, we will focus on building complex async flows with promises.

Create a `getJSON` function that takes 2 parameters:
- `path`, that will be the url called by your function
- `params` *optional*, that will be the search parameters appended to your url

`getJSON` will return a new promise.
This function must construct a valid url with the `path` and stringified `params`
and call `fetch` with it.
The response body must then be read and parsed from json.

The parsed object contains one of those 2 properties:
- `"data"` the actual data returned by the request.
- `"error"` the error message returned by the request.

If the response object contains the `"error"` key, your function must throw this error using
the error value.
If the response object contains the `"data"` key, your function must resolve the promise with the data.


### Notions

- [nan-academy.github.io/js-training/examples/promise.js](https://nan-academy.github.io/js-training/examples/promise.js)
- [devdocs.io/dom/fetch_api/using_fetch](https://devdocs.io/dom/fetch_api/using_fetch)
- [devdocs.io/dom/urlsearchparams](https://devdocs.io/dom/urlsearchparams)
- [devdocs.io/javascript/global_objects/json](https://devdocs.io/javascript/global_objects/json)