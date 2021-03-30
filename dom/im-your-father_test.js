export const tests = []

//Testing Darth Vader
// tests.push(async ({eq, page}) => {
//   const btn = await page.$('#btn-4')
//   console.log(btn)
//   btn.click()
//   await page.waitForTimeout(150)

//   const text = await page.$eval('#title', node => {
//     console.log("HERE BITCH", node.textContent)
//     return node
//   })
  
//   eq(text.textContent, "Luke, I am your father !")
// })

//Testing Luke Skywalker
tests.push(async ({eq, page}) => {
  const btn = await page.$("#btn-1")
  btn.click()
  await page.waitForTimeout(150)

  page.$eval("#title", node => {
    console.log(node)
  }).then((res) => {
    console.log("RES", res)
  }).catch((err) => {
    console.log("ERR", err)
  })
  //console.log(text)
  //console.log(text, text.text?.(), text.innerText, text.textContent, text.text)
  // const text = await page.$eval('#title', node => {
  //     console.log("HERE BITCH", node.textContent)
  //     return node
  // })

  eq("test", "Luke, I am your father !")
})

// //Testing Unknown
// t(({eq, page}) => test(eq, page, 10, "I'm unknown in the world of this exercice"))

Object.freeze(tests)

export const setup = () => ({
})

