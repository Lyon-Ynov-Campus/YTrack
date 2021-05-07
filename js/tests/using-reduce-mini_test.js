export const tests = []
const t = (f) => tests.push(f)

t(({ eq }) => eq(multiplicator([1, 2, 3, 4]), 24))
t(({ eq, ctx }) =>
  // check that the code did use reduce properly
  eq(ctx.reduceCalls[ctx.reduceCalls.length - 1], [1, 2, 3, 4])
)

t(({ eq }) => eq(multiplicator([1, 2, 3, 4], 5), 120))
t(({ eq, ctx }) =>
  // check that the code did use reduce properly
  eq(ctx.reduceCalls[ctx.reduceCalls.length - 1], [1, 2, 3, 4])
)

t(({ eq }) => eq(multiplicator([9, 24, 7, 11, 3], 10), 498960))
t(({ eq, ctx }) =>
  // check that the code did use reduce properly
  eq(ctx.reduceCalls[ctx.reduceCalls.length - 1], [9, 24, 7, 11, 3])
)
t(({ eq }) => eq(multiplicator([]), 1))
t(({ eq, ctx }) =>
  // check that the code did use reduce properly
  eq(ctx.reduceCalls[ctx.reduceCalls.length - 1], [])
)

Object.freeze(tests)

export const setup = () => {
  const reduceCalls = []
  const _reduce = Array.prototype.reduce
  Array.prototype.reduce = function () {
    reduceCalls.push(this)
    return _reduce.apply(this, arguments)
  }

  return { reduceCalls}
}
