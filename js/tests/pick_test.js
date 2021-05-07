export const tests = []
const t = (f) => tests.push(f)

t(({ eq, ctx }) => eq(pick(ctx.agent, ['firstName', 'lastName']), ctx.newAgent))
t(({ eq, ctx }) => eq(pick(ctx.car, ['brand', 'year']), ctx.newCar))
t(({ eq, ctx }) => eq(pick(ctx.user, ['ageVerified']), ctx.newUser))
t(({ eq, ctx }) => eq(pick(ctx.computer, ['graphic']), {}))

// It should ignore properties from the prototype chain
t(({ eq }) =>
  eq(pick({ something: 5, __proto__: { d: 6 } }, ['proto', 'something']), {
    something: 5,
  }),
)

Object.freeze(tests)

export const setup = () => ({
  agent: {
    firstName: 'James',
    lastName: 'Bond',
    age: 25,
    email: 'jamesbond@hotmail.com',
  },
  newAgent: { firstName: 'James', lastName: 'Bond' },
  car: { brand: 'ford', motor: 'v8', year: 2000 },
  newCar: { brand: 'ford', year: 2000 },
  user: { firstName: 'John', lastName: 'Doe', age: 32, ageVerified: false },
  newUser: { ageVerified: false },
  computer: { brand: 'lenovo', ram: '32GB', processor: 'i7 8th Gen' },
  tools: { drill: 'bosh', grinders: 'DeWalt', saws: ' Makita' },
  newtool: { drill: 'bosh' },
  games: { board: 'monopoly', cards: 'poker', dice: 'roulette' },
  newgames: { dice: 'roulette' },
  language: { England: 'english', Spain: 'spanish', Portugal: 'portuguese' },
  newlanguage: { England: 'english', Portugal: 'portuguese' },
  phone: { samsung: 'galaxy', asus: 'zenphone', nokia: 'lumia' },
})
