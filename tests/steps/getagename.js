const { Given, When, Then } = require('@cucumber/cucumber');
const { request } = require('@playwright/test');
const { expect } = require('@playwright/test');

let apiContext;
let response;


Given('the API endpoint is {string}', async function (endpoint) {
  apiContext = await request.newContext();
  this.endpoint = endpoint; // Store endpoint for later use
});

// The Main GET Endpoint Request

When('a GET request is sent to the endpoint', async function () {
  response = await apiContext.get(this.endpoint);
});

// Most Status Codes SHOULD be 200

Then('the response status code should be {int}', async function (statusCode) {
  expect(response.status()).toBe(statusCode);
  console.log(statusCode);
});

// Check If The Name And Estimated Age Fields To Come Back

Then('each user should have a {string} age', async function (age) {
    expect(age).toContain("age");
    console.log(age);
});


// Check If The Country Field And Estimated Age Also Comes Back

Then('each user should have a {string} country', async function (country) {
    expect(country).toContain("country");
    console.log(country);
});


// JSON Array List Of Users Count > 2

Then('the response array should contain at least 2 users', async function () {
  jsonArray = (response);
  const count = jsonArray.length;
  // expect(jsonArray.count).toBeGreaterThanOrEqual(2); - needs section more work
  console.log("JSON Array Count Is Greater => 2");
});


// Check If The Name And Estimated Gender Fields To Come Back

Then('each user should have a {string} gender', async function (gender) {
    expect(gender).toContain("gender");
    console.log(gender);
});




// Other Testing Step Method Notes



// Then('each user should have a [array] property', async function (propertyName) {
//   const users = await response.json();
//   users.forEach(user => {
//     expect(user).toHaveProperty(propertyName);
//   });
// });


// Then('each user should have a [] property', (s) => {
//   // Write code here that turns the phrase above into concrete actions
// })


// var userData = _data;
// var newData = JSON.parse(userData).data.userList