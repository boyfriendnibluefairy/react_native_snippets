/*
file name : 01_fetch_a_promises.js

How to use javascript to fetch and load data from an external WEB API with Promises.

dummy API:
jsonplaceholder.typicode.com
*/

// fetch() - method that gathers data from an API in the browser.
// fetch() returns an object called Promise that has three states: pending, resolved, & rejected.
// When Promise is resolved, the callback function inside the then() method is executed. In other words, the callback function is executed as soon as the data arrive.
// res = response
// The first then() method saves the Promise object into res variable.
// The json() method converts json text into a javascript object named data.
fetch("https://jsonplaceholder.typicode.com/todos")
  .then((res) => res.json())
  .then((data) => console.log(data));
