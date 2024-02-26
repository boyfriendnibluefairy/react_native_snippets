/* INTERFACE */
// An interface is similar to a class that has properties
// and methods but an interface does not provide implementation
// nor initialization for them.

interface Dragon {
    firstName : string,
    age : number,
    avatarURL : string
}

const balerion : Dragon = {
    firstName: "Balerion",
    age : 100,
    avatarURL : "/image/balerion.png"
}
