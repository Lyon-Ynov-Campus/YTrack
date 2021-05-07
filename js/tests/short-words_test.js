
export const tests = []
const t = (f) => tests.push(f)

//monkey patch of every

export const setup = () => {
  const everyCalls = []
  const _every = Array.prototype.every
  Array.prototype.every = function () {
    everyCalls.push(this)
    return _every.apply(this, arguments)
  }

  const someCalls = []
  const _some = Array.prototype.some
  Array.prototype.some = function () {
    someCalls.push(this)
    return _some.apply(this, arguments)
  }
  return { everyCalls, someCalls }
}

let arr1 = ['fill', 'carbo', 'chart', 'glare', 'expre']
let arr2 = ['double', 'afford', 'coalition', 'reaction', 'persist']
let arr3 = ['leak', 'talk', 'bite', 'slip', 'free']
let arr4 = ['fixture', 'opponent', 'coincide', 'test', 'relaxation']

t(({ eq }) => eq(shortWords(arr1), true))
t(({ eq, ctx }) => eq(ctx.everyCalls[ctx.everyCalls.length - 1], arr1))
t(({ eq }) => eq(shortWords(arr2), false))
t(({ eq, ctx }) => eq(ctx.everyCalls[ctx.everyCalls.length - 1], arr2))
t(({ eq }) => eq(shortWords(arr3), true))
t(({ eq, ctx }) => eq(ctx.everyCalls[ctx.everyCalls.length - 1], arr3))
t(({ eq }) => eq(shortWords(arr4), false))
t(({ eq, ctx }) => eq(ctx.everyCalls[ctx.everyCalls.length - 1], arr4))

t(({ eq }) => eq(noShortWords(arr1), false))
t(({ eq }) => eq(noShortWords(arr2), true))
t(({ eq }) => eq(noShortWords(arr3), false))
t(({ eq }) => eq(noShortWords(arr4), false))

Object.freeze(tests)
