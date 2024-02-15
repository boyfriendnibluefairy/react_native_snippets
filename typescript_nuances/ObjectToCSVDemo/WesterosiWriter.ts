import { ObjectToCSV } from "../../src"

interface Westerosi {
    id: number
    firstName : string
    hasDragon : boolean
}

const westerosiWriter = new ObjectToCSV<Westerosi>(["id", "firstName", "hasDragon"])

westerosiWriter.attachRows([
    { id: 1, firstName: "Arya", hasDragon: false },
    { id: 2, firstName: "Daenerys", hasDragon: true },
    { id: 3, firstName: "Rhaegar", hasDragon: true },
])


westerosiWriter.attachRows([
    { id: 4, firstName: "Viserys", hasDragon: true },
    { id: 5, firstName: "Brandon", hasDragon: false },
    { id: 6, firstName: "Rhaenyra", hasDragon: true },
])

westerosiWriter.saveToCSVFile("westerosi.csv")
