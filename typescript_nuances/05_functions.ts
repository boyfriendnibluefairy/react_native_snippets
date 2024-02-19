/* Functions */

function getArea(width:number, height:number):number{
    return width*height
}

// Another way to write a function
const subtractAB = (A:number, B:number): number => {
    return A - B
}

function addAllItems(items:number[]): number {
    return items.reduce((x,y)=> x+y, 0)
}

let totalSum:number = addAllItems([1,2,3])

// Maybe caret is used so that quotes and double quotes can be applied
function message(greeting:string, firstName:string):string {
    return `${greeting}, ${firstName}`
}

let greet = message("Happy Birthday ", "Angel")

// console.log(getArea(3,5))
// console.log(subtractAB(100,90))
// console.log("total sum = " + totalSum)
// console.log(greet)