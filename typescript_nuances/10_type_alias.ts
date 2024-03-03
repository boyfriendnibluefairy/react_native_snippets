/* TYPE ALIAS */
// Interfaces can't express unions, mapped types, or conditional types. Type aliases can express any type.
// Interfaces can use extends, types can't. You should use types by default until you need a specific feature of interfaces, like 'extends'

type ColorInRGB = [
    red : number,
    green : number,
    blue : number
]

function randomizeColor(): ColorInRGB {
    const r = Math.floor(Math.random() * 255)
    const g = Math.floor(Math.random() * 255)
    const b = Math.floor(Math.random() * 255)

    return [r, g, b]
}


const paintColor1 = randomizeColor()
const paintColor2 = randomizeColor()

console.log(paintColor1)
console.log(paintColor2)
