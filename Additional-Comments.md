## Additional Test Steps To Consider And Also Take Note Of
---

These were just some of my thoughts on paper which we can hopefully discuss in our 2nd round interview with David / The Dev Team.

### 1st Thing To Consider - Getting Proper API Keys
---

We should really should get an API key setup for this project if you want to automate the tests



I was very tempted to signup for an API Key as I run out of my daily requests 😉

(used my mobile phone hotspot in the meantime to change IP Addresses)

```
(https://api.genderize.io?name=peter&apikey=YOUR_API_KEY)
```


**You Can Purchase An API Key From Here**

https://agify.io/store

As it only costs $20 per month to purchase

As if there are a few test failures which occur 4-5x times in a pipeline

Then we would easily hit the cap of 100 requests per day
(this could be a problem doing future deployment builds)

e.g. especially if we do more than 2-3 releases per day

I didn't purchasing an API key for this exercise (but if I had more time to setup these tests) I would have used a valid API key for some of the additional steps. (since this is a public API anyone can hit and it has different functionality with an API vs Without)


> **Warning**
> ALSO YOU SHOULD NEVER EVER STORE API KEYS IN GITHUB REPOS Code 
> As once you have committed it to the project your API can then be exposed / open for attack by hackers etc.


Another good practice is generally to use some kind of AUTH service; which allows you to create tokens which have an expiry instead of hardcoded API keys which never expire.


### 2nd Thing To Consider - Test Execution / Splitting Up The Feature Files

---

I would have also liked to have split up the feature files for these tests (by GET requests, POST requests, PUT requests etc.)

(again ran out of time and took a minimilistic approach to be able to get something working + running) 

Its also not a bad practice to split up your tests so that when you execute or need to re-run them it can be easier to debug + get them green / working again.

If a particular test suite takes too long to run; then we can consider splitting up them for faster test execution

e.g. We could potentially spin up more `docker instances` in kubernetes to run our tests and increase concurrency

There may potentially be another use case to split up the tests if the API re

e.g. UK / US / AU Hosted Regions might have some different business logic / endpoints so it could make sense to split these up


### 3rd Thing To Consider - Better ReadMe Formatting + Local Setup Scripts

---

I will be doing some further updates to the readme / later this evening to tidy things up a bit; so please clone the latest repo tomorrow morning if there are some more changes 🙂

However the readme formatting is quite basic (in a real project repository I would like it to be neat + tidy)

To help make local setups faster we could also consider writing a bash script which does all the commands necessary and get new people up + running quicker.

### 4th Thing To Consider - Test Output Reporting

---

Ideally the results should be going somewhere and outputted into something like HTML reporter

So that they can easily be downloaded + viewed in browser etc.

I would have used + configured something like `cucumber-html-reporter`

To output the test results + failed steps

(unfortunately I ran out of time to set this up correctly)

As having a nice reporter would be critical when debugging the tests + including them in pipelines.

Rather than just a simple test has passed.
