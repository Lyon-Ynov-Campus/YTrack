# Sortable 

### Ressource

Public api: https://github.com/public-apis/public-apis


## Instruction 

You are a villain and your dream is to get rid of those annoying, yoga-pant-wearing, weird masked superheroes. You never understood why some of them are considered to be superheroes, just because they are rich. Others annoy you with their philosophical speeches.

We've found confidential information about those superheroes.

Your task is to build a web page to organize all the data about those smartypants. All that data can be found here in `all.json` .

You must write all of the code from scratch. You are not allowed to rely on any frameworks or libraries like React, Vue, Svelte etc.

### Fetching the data

In order to get the information, you should use `fetch`. When you use `fetch` in JS, it always returns a `Promise`. We will look more deeply into that later on. For now, tak a look at this:

```
{
// This function is called only after the data has been fetched, and parsed.
const loadData = heroes => {
  console.log(heroes)
}

// Request the file with fetch, the data will downloaded to your browser cache.
fetch('Choose ur api')
  .then((response) => response.json()) // parse the response from JSON
  .then(loadData) // .then will call the `loadData` function with the JSON value.
}
```

### Display

Not all the information is valuable at a glance, so we will only show some of the fields in a `<table>` element. The necessary data will be:


- Icon (`.image.xs`, should be displayed as images and not as a string)
- Name (`.name`)
- Other data ...

The information must be displayed in multiple pages. Use a `<select>` input to chose the page size from `10`, `20`,`50`, `100` or `all results`.

The default page size selected option must be `20`.

### Search

It must be possible to filter information by searching the name as a string. For example, searching "man" should find all superheros with `"man"` in their name.

The search should be interactive. In other words, the results should be filtered after every keystroke. So we don't need a "search" button.

### sort

It will be valuable to sort the information in the table by any of its columns. Results should be sortable alphabetically or numerically.

- nitially all rows should be sorted by the column `name`,`age`, `birth`, `data` by `ascending` order.
- The first click on a column heading will sort the table by the data in that column in `ascending`.
- Consecutive clicks on a column heading will toggle between `ascending` and `descending`


### Bonus 

Additional features will be critical to your success. Here's a few which will give you a bigger boost:

- Specify the field that the search applies to.
- Custom search operators
    - `include`
    - `exclude`
    - `fruzzy`
    - `equal`,`note equal`, `geater than` and `lesser than` for numbers (including weight and height).
- Detail view. Clicking a hero from the list will show all the details and large image.
- A slick design. Spend some time improving the look and feel by playing around with CSS. Have fun with it.
- Modify the URL with the search term, so that if you copy and paste the URL in a different tab, it will display the same column filters. If you have implemented detail view, the state of which hero is displayed should also form part of the URL.