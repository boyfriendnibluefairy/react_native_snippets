/* TAGGED INTERFACE */
// When declaring union types with types having properties and methods,
// we can create a tag common to each types so that we facilitate type guard


interface HomeAddress {
    addressTag: "home",  // property common to other address interface
    ownerName: string,
    isForSale: boolean
    streetName : string
}

interface EmailAddress {
    addressTag: "email",
    userName : string,
    domainName : string
}

function displayAddress(x : EmailAddress | HomeAddress) {
    if (x.addressTag === "email"){
        console.log(`email address : ${x.userName}@${x.domainName}`)
    }
    if(x.addressTag === "home"){
        console.log(`${x.ownerName} lives in ${x.streetName}`)
    }
}

let aemondHome : HomeAddress = {
    addressTag : "home",
    ownerName : "Aemond",
    isForSale : false,
    streetName : "Harrenhal"
}

let aryaEmail : EmailAddress = {
    addressTag : "email",
    userName : "arya",
    domainName : "gmail.com"
}

displayAddress(aryaEmail)
displayAddress(aemondHome)
