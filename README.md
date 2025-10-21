# kaluza-cucumber-bdd-tests
These are the BDD Cucumber Tests For Kaluza Interview

**NOTE:** If for whatever reason you cannot get these tests to run I have attached a quicktime video for reference of them working
recording-fallback-example-test-working.mp4


##### Step 1

Ensure that both Node + npm is also installed

You can check this by running the command in terminal shell
node -v
npm -v

If you dont have node installed you can simply run the command
`brew install node`


The current versions running on my local mac machine were

`Node
v18.20.8`

`NPM
v10.8.2`

So hopefully your current node / npm versions will also work on your machine too

##### Step 2

ssh clone the repo (or manually download the zip)

`git clone git@github.com:hanothemano/kaluza-cucumber-bdd-tests.git`


cd into the project folder

`cd ~/Downloads/kaluza-cucumber-bdd-tests`


##### 1st Command To Run After Cloning

`npm init playwright@latest`

Q1. Do you want to use TypeScript or JavaScript?
Select Javascript for that option

Q2. Where to put your end-to-end tests?
use the same existing directory folder "tests"

Q3. Add a GitHub Actions workflow?
true

Q4. Install Playwright browsers (this can be done manually via npx playwright install)
/Users/thansen/bayshanntech-repositories/kaluza-cucumber-bdd-tests/playwright.config.js already exists. Override it? (y/N) › false


##### 2nd Command To Run (Installing Cucumber)
`npm i @cucumber/cucumber node modules`


##### 3rd Command To Run (node fetch)
`npm install node-fetch`


##### Additional Tip For Cucumber Configs In Vscode
Another thing you should usually do is configure vscode or your IDE with a cucumber glue reference. As it helps with debugging the test steps and links the given when then statement for the feature files.

Code -> Settings -> Settings -> Cucumber Features -> Edit Settings.JSON

See Sample File: sample-cucumber-settings-json


##### 4th Command - Executing The Cucumber Tests Locally
In the main project root directory

run the following command
`npx cucumber-js features`




##### Note. If you cannot get these tests to run properly I have done a quicktime screen recording showing them working

> recording-fallback-example-test-working.mp4


##### There Are Some Additional Testing Notes In This File
Additional-Comments.md