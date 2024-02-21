/*
file name : 02_async_await_fetch.js

A cleaner way of fetching data from external WEB API. This is much cleaner than the
ones given in 01_fetch_a_promises.js

How to use javascript to fetch and load data from an external WEB API with Promises.

dummy API:
jsonplaceholder.typicode.com
*/

// fetch() - method that gathers data from an API in the browser.
// fetch() returns an object called Promise that has three states: pending, resolved, & rejected.
// The await keyword signals javascript that the execution must wait for the
// fetch method to return the Promise object before executing the next line of code.
// Without the await keyword, javascript will automatically move on to the next line of code regardless whether the fetch() method has returned something or not.
async function getList() {
  // The Promise object is stored in a variable called res, short for response.
  const res = await fetch("https://jsonplaceholder.typicode.com/todos");
  // The json() method converts json text into a javascript object named data.
  const data = await res.json();

  //console.log(data)
  return data;
}

console.log(getList());
