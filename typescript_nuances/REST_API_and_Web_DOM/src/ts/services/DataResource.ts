/*
With the export keyword, the JavaScript adds a line to add the exported item to the module. So conceptually, visibility as controlled by public and private is just for tooling, whereas the export keyword changes the output.
*/
export class DataResource<T> {
    /* In REST API, the endpoint for DataResource would be the starting point
    of REST API.
    */
    constructor(private endpoint:string){}

    // fetch methods are async.
    // we add : Promise<T> to tell the system that we are explicitly
    // waiting for a value with return type T
    async loadAllItems(): Promise<T[]> {
        // fetch is a global javascript function in your OS for obtaining
        // a resource in the network
        const response = await fetch(this.endpoint)

        /*
        A Promise in TypeScript (and JavaScript) is an object that represents an operation that hasn't completed yet but is expected in the future. A Promise can be in one of three states: Pending, Fulfilled, Rejected
        json() returns the parsed body of a request
         */
        return response.json()
    }

    async loadItem(id: number): Promise<T>{
        const response = await fetch(`${this.endpoint}/${id}`)

        return response.json()
    }

    async deleteItem(id: number): Promise<Response>{
        const response = await fetch(`${this.endpoint}/${id}`, {
            method: "DELETE"
        })

        return response
    }

    // add : Promise<Response>
    // to return a Response.ok result to
    // create.ts
    async saveItem(data: T): Promise<Response> {
        const response = await fetch(this.endpoint, {
            method: "POST",
            // stringify converts data to JSON string
            body: JSON.stringify(data),
            headers: {"Content-Type": "application/json"}
        })

        return response
    }
}