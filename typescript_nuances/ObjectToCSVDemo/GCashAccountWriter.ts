import { ObjectToCSV } from "../../src" 

interface GCashAccount{
    id: number
    balance: number
    paymentTo: string
    details: string
}

// // we can get rid of these columns because we used "keyof T"
// // in the main file
// type GCashAccountColumns = ("id" | "balance" | "paymentTo" | "details")[]

// specify <T>
const gcashWriter = new ObjectToCSV<GCashAccount>(["id", "balance", "paymentTo", "details"])

// test your converter
gcashWriter.attachRows([
    { id: 3, balance: 100, paymentTo: "Yeshkel", details: "baskeball analysis"},
    { id: 6, balance: 300, paymentTo: "WGameplay", details: "voice recording"},
])

gcashWriter .saveToCSVFile("gcash_accounts.csv")