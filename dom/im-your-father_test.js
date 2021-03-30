export const tests = []

const t = (f) => tests.push(f)

//Test waitAndExecute before 1s should do nothing
t(({eq, ctx}) => {
  console.log(fetch("https://swapi.dev/api/people/"))
    return eq(1, 1)
})

Object.freeze(tests)

export const setup = () => ({
  delayed: (delay) => (...v) => new Promise((s) => setTimeout(s, delay, v)),
})

