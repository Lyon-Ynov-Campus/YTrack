
export const IAmYourFather = (id) => {
    return fetch(`https://swapi.dev/api/people/${id}`)
    .then((response) => response.json())
    .then((res) => {
        if (res?.name === "Luke Skywalker")
            return "No, that's not true, that's impossible !"
        else if (res?.name === "Darth Vader")
            return "Luke, I am your father !"
        else 
            throw "I'm unknown in the world of this exercice"
    })
}