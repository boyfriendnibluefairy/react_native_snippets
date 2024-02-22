/* Any - a type that can change in the future */
// - useful when migrating from js to ts simply by
// gradually adding any type on variables

let address : any
address = 1625
address = "King's Landing"

//console.log(address)


// Any type in arrays
let personData: any[] = ["Aegon", true, 25, null]
personData.push("Targaryen")

//console.log(personData)


// Any type in functions
// - not recommended because it defeats the
// purpose of typescript

function addItems(x:any): any {
    return x + x
}

let y1 = addItems("love")
let y2 = addItems(3)

console.log(y1)
console.log(y2)