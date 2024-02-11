let firstName:string = "Aegon"
let lastName:string = "Targaryen"
let fullName:string = firstName + " " + lastName
let age:number = 25
let isFictional:boolean = true

console.log(fullName)
console.log(age)
console.log("Is he fictional? : "+isFictional)

// Use null for intentional absence of value.
// Use undefined for values that are not defined yet.
let blackHole : null
let phase : undefined

// blackHole = 100 // error
// phase = 100 // error