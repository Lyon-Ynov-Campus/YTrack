export const tests = []
const t = (f) => tests.push(f)

// citiesOnly
t(({ eq, ctx }) =>
  eq(tempsOnly(ctx.states), [
    '101 °F',
    '84 °F',
    ' 112 °F',
    ' 0 °F',
    ' 21° F',
    '45 °F',
    ' 70°F  ',
    ' -1 °F',
    ' 95 °F',
  ])
)

t(({ eq, ctx }) =>
  // check that the code did use map properly
  eq(ctx.mapCalls[0], ctx.states)
)

export const setup = () => {
  const mapCalls = []
  const _map = Array.prototype.map
  Array.prototype.map = function () {
    mapCalls.push(this)
    return _map.apply(this, arguments)
  }

  const states = [
    {
      city: 'Los Angeles',
      temperature: '101 °F',
      state: 'california',
      region: 'West',
    },
    {
      city: 'San Francisco',
      temperature: '84 °F',
      state: 'california',
      region: 'West',
    },
    {
      city: 'Miami',
      temperature: ' 112 °F',
      state: 'Florida',
      region: 'South',
    },
    {
      city: 'New York City',
      temperature: ' 0 °F',
      state: 'new york',
      region: 'North East',
    },
    { city: 'Juneau', temperature: ' 21° F', state: 'Alaska', region: 'West' },
    {
      city: 'Boston',
      temperature: '45 °F',
      state: 'massachussetts',
      region: 'North East',
    },
    {
      city: 'Jackson',
      temperature: ' 70°F  ',
      state: 'mississippi',
      region: 'South',
    },
    {
      city: 'Utqiagvik',
      temperature: ' -1 °F',
      state: 'Alaska',
      region: 'West',
    },
    {
      city: 'Albuquerque',
      temperature: ' 95 °F',
      state: 'new mexico',
      region: 'West',
    },
  ]

  Object.getPrototypeOf([]).proto = ' [avoid for..in] '

  Object.freeze(states)

  return { mapCalls, states}
}

Object.freeze(tests)
