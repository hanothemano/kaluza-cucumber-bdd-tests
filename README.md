# kaluza-cucumber-bdd-tests
bdd tests for kaluza interview


Ensure that node is installed
And that NPM is also installed

node -v
npm -v

the current versions running on my local mac machine are 

Node
v18.20.8

NPM
v10.8.2

So hopefully your current versions will also work when you download this repo!


clone the repo
git@github.com:hanothemano/kaluza-cucumber-bdd-tests.git


cd into the project folder

cd kaluza-cucumber-bdd-tests


1st command to run

npm init playwright@latest

Q1. Do you want to use TypeScript or JavaScript?
Select Javascript for that option

Q2. Where to put your end-to-end tests?
use the same existing directory folder "tests"

Q3. Add a GitHub Actions workflow?
true

Q4. Install Playwright browsers (can be done manually via 'npx playwright install')
/Users/thansen/bayshanntech-repositories/kaluza-cucumber-bdd-tests/playwright.config.js already exists. Override it? (y/N) › false



2nd command to run (installing cucumber)
npm i @cucumber/cucumber node modules


3rd command to run (node fetch)
npm install node-fetch


4th Tip For Cucumber
make sure you have also configured your vscode
Cucumber Glue -> helps with debugging + linking the given when then statement in the feature files

settings.json -> add here soon






5. Executing The Cucumber Tests Locally

in the main project root directory
run the following command

npx cucumber-js features




6. If you can't get these tests to run properly (I have done a quicktime screen recording with them working!)

see <folder name>