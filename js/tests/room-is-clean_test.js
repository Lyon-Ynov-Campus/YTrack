export const tests = []

const t = (f) => tests.push(f)

//Test waitAndExecute before 1s should do nothing
t(async ({eq, ctx}) => {
    const toto = []
    const promise = new Promise((resolve) => {
        waitAndExecute((...args) => {
            toto.push(...args)  
            resolve("executed")
        })("a", "b")
    })
    const res = await Promise.race([ctx.delayed(500)("timeout"), promise])
    return eq(res[0], "timeout") && eq(toto.length, 0)
})

// Test waitAndExecute works after 1s
t(async ({eq, ctx}) => {
    const toto = []
    const promise = new Promise((resolve) => {
        waitAndExecute((...args) => {
            toto.push(...args)  
            resolve("executed")
        })("a", "b")
    })
   const res = await Promise.race([ctx.delayed(1100)("timeout"), promise])
   
   return eq(res, "executed") && eq(JSON.stringify(toto), JSON.stringify(["a", "b"])) 
})

// Test isMyRoomClean true before 1s
t(async ({eq, ctx}) => {
    const res = await Promise.race([ctx.delayed(100)("timeout"), isMyRoomClean(true)])
    return eq(res[0], "timeout")
})

// Test isMyRoomClean true after 1s
t(async ({eq, ctx}) => {
    const res = await Promise.race([ctx.delayed(1100)("timeout"), isMyRoomClean(true)])
    return eq(res, "My room is clean")
})

// Test isMyRoomClean false before 1s
t(async ({eq, ctx}) => {
    const res = await Promise.race([ctx.delayed(100)("timeout"), isMyRoomClean(false)])
    return eq(res[0], "timeout")
})
 
// Test isMyRoomClean false after 1s
t(async ({eq, ctx}) => {
    try {
        const res = await Promise.race([ctx.delayed(1100)("timeout"), isMyRoomClean(false)])
    }
    catch (err) {
        return eq(err, "My room is not clean")
    }
})

Object.freeze(tests)

export const setup = () => ({
  delayed: (delay) => (...v) => new Promise((s) => setTimeout(s, delay, v)),
})

