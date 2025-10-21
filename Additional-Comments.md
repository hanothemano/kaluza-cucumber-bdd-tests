Steps To Consider Also Take Note Of

1st Thing To Consider
We should really should get an API key setup for this project if you want to automate the tests
https://api.genderize.io?name=peter&apikey=YOUR_API_KEY


I almost had to signup for an API Key if I run out of requests (used my mobile phone hotspot in the meantime)
https://agify.io/store

As it only costs $20 so probably worth trying

As if there are test failures say 4-5 fail multiple times in a pipeline
then we will easily hit the cap of 100 requests per day

(this could be a problem doing future deployment builds) 
e.g. especially if we do more than 2-3 releases per day


I won't be purchasing an API key for this exercise (but if I have the extra time)
I will give an extra example in the project folder to show how you can get this working with API key

(and temp store API key in a txt file etc.)


The best practice is generally to use AUTH servicce instead of hardcoded API keys which never expire

So that way we have less security risk more details TBC on this topic

YOU SHOULD NEVER store API keys in Github repos



2nd Thing To Consider

Test Execution / splitting up the feature files

I would like to also have multiple feature files / failure points for the tests

if the suite takes too long to run then we should split up the feature for better test execution

it all depends on how fast we could potentially spin up docker ec2 instances in kubernetes to run our tests

and if it made sense to split up the tests using configs

e.g. UK / US / AU Regions

Since these are all GET name requests (then it makes sense to have them)

However I only just realised 



3rd Thing To Consider

I will be doing some more updates to the readme / later this evening to tidy things up a bit

So please clone the latest repo tomorrow morning if there are changes