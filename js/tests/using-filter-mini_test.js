export const tests = []
const t = (f) => tests.push(f)

const check = ({ filterCalls }, eq, a, b) => {
  const result = eq(a, b)
  const len = filterCalls.length
  filterCalls.length = 0
  return len ? result : false
}

t(({ eq, ctx }) =>
  // check that the code did use filter properly
  check(ctx, eq, filterLongStateName(ctx.arr1), ["Connecticut", "Massachusetts", "Mississippi", "New Hampshire", "North Carolina", "North Dakota", "Pennsylvania", "Rhode Island", "South Carolina", "South Dakota", "West Virginia"])
)

Object.freeze(tests)

export const setup = () => {
  const filterCalls = []
  const _filter = Array.prototype.filter
  Array.prototype.filter = function () {
    filterCalls.push(this)
    return _filter.apply(this, arguments)
  }

  const arr1 = Object.freeze([
    'Alabama',
    'Alaska',
    'Arizona',
    'Arkansas',
    'California',
    'Colorado',
    'Connecticut',
    'Delaware',
    'Florida',
    'Georgia',
    'Hawaii',
    'Idaho',
    'Illinois',
    'Indiana',
    'Iowa',
    'Kansas',
    'Kentucky',
    'Louisiana',
    'Maine',
    'Maryland',
    'Massachusetts',
    'Michigan',
    'Minnesota',
    'Mississippi',
    'Missouri',
    'Montana',
    'Nebraska',
    'Nevada',
    'New Hampshire',
    'New Jersey',
    'New Mexico',
    'New York',
    'North Carolina',
    'North Dakota',
    'Ohio',
    'Oklahoma',
    'Oregon',
    'Pennsylvania',
    'Rhode Island',
    'South Carolina',
    'South Dakota',
    'Tennessee',
    'Texas',
    'Utah',
    'Vermont',
    'Virginia',
    'Washington',
    'West Virginia',
    'Wisconsin',
    'Wyoming',
  ])

  return { filterCalls, arr1 }
}
