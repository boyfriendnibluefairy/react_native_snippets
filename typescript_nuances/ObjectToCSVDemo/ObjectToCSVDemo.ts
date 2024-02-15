/* Object to CSV File USING GENERICS */

// To write csv object into a csv file we need appendFileSync from fs module.
// fs module is included in the installed Node.js
// But typescript will report an error because we are using a js module
// inside a .ts file.
// To solve this, install the type definition of these js modules to your
// typeScript environment:
// So open up a new terminal
// > npm init -Y
// just click enter, enter, enter, until you reach the end.
// > npm install -D @types/node
// package.json should be created on your project and the error goes away.
import { appendFileSync } from "fs"

export class ObjectToCSV<T> {
    // keyof T = properties of T
    constructor(private columns: (keyof T)[]){
        this.csv = this.columns.join(',') + '\n'
    }

    private csv: string

    saveToCSVFile(fileName : string): void {
        appendFileSync(fileName, this.csv)
        // after the recent save, we would like to
        // wipe the old csv object clean
        this.csv = '\n'

        console.log("file saved to", fileName)
    }

    attachRows(x: T[]): void {
        let rows = x.map((v) => this.formatRow(v))
        this.csv += rows.join('\n')
        console.log(this.csv)
    }

    private formatRow(value: T): string {
        return this.columns.map((col) => value[col]).join(',')
    }
}

