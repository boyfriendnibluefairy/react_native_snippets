/* FUNCTION SIGNATURES */

// Function Signature defines the input parameters and their types and also the expected return type for that function.
// Function signatures have two purposes. First, it allows us to construct interfaces because function signature does not have implementation. Second, it allows function overloading.
// Function overloading allows us to define multiple function signatures for a single function name, enabling the same function to exhibit different behaviors based on the number or types of arguments passed to it.

// Two ways to write function signature inside an interface:
interface ShapeArea {
    name: string,
    getArea: (x: number) => number
}

interface ShapeVolume {
    name: string,
    getVolume(x: number) : number
}

const circularArea : ShapeArea = {
    name: "disk",
    getArea(r : number){
        return Math.PI * r^2
    }
}

const sphericalVolume : ShapeVolume = {
    name: "sphere",
    getVolume(r : number){
        return (4/3)*Math.PI*(r^3)
    }
}

console.log(circularArea.getArea(6))
console.log(sphericalVolume.getVolume(9))