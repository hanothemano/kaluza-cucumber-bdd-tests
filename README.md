# kaluza-cucumber-bdd-tests
These are the BDD Cucumber Tests which I have created for the 2nd Round Kaluza Interview

---

> **NOTE:**
> If for whatever reason you cannot get these tests to run in your machine;
> I have also attached a quicktime video for reference to show them working on mine

`recording-fallback-example-test-working.mp4`


### Pre-Setup Config

---

#### Step 1 - Installing Node Dependencies

Ensure that both Node + npm is also installed

You can check by running this command in your terminal shell

````
node -v
npm -v
````

If you dont have node correctly installed you can simply run the command

`brew install node` -> provided you have brew pre-installed on your mac

(you may also need to update current terminal shell `~/.zshrc` to include the PATH variable)

The current node / npm versions that I had running on my local mac machine were

`Node
v18.20.8`

`NPM
v10.8.2`

So hopefully your current node / npm versions will also work + the tests run fine on your machine

### Step 2 - Clone The Repository To Your Local Machine

---

You can clone the repo via SSH (or manually download the zip)

`git clone git@github.com:hanothemano/kaluza-cucumber-bdd-tests.git`

Then change into the project root directory

`cd ~/Downloads/kaluza-cucumber-bdd-tests`


### 1st Command To Run After Cloning The Repo
---

After downloading the repo -> and in the root project directory download the latest playwright dependencies

`npm init playwright@latest`

You will be given a few prompts when installing these playwright packages

1. Do you want to use TypeScript or JavaScript?
Select Javascript for that option

2. Where to put your end-to-end tests?
use the same existing directory folder "tests"

3. Add a GitHub Actions workflow?
true

4. Install Playwright browsers (this can be done manually via npx playwright install)
/Users/thansen/bayshanntech-repositories/kaluza-cucumber-bdd-tests/playwright.config.js already exists. Override it? (y/N) › false


### 2nd Command To Run (Installing Cucumber)
---

The next step is to then install the cucumber modules with this command

`npm i @cucumber/cucumber node modules`

You should hopefully get a response that 23+ packages are installed


### 3rd Command To Run (Install Node Fetch)
---

Another step is to then install node fetch dependencies

`npm install node-fetch`

This package module will be used to use the Fetch API in Node.js, enabling us do HTTP requests with our tests 


### Additional Tip For Setting Up Cucumber Configs In Vscode
---

Another thing you should usually do is configure vscode or your IDE with a cucumber glue file reference. 

As this helps with debugging the test steps and links the given when then statement in the feature files.

```Code -> Settings -> Settings -> Cucumber Features -> Edit Settings.JSON```

**See Sample File:**
```sample-cucumber-settings-json```


### 4th Command - Executing The Cucumber Tests Locally

---

In the main project root directory

run the following command

`npx cucumber-js features`

This should run the 11 BDD tests and show a few of the API responses in terminal

```e.g. 200.. 200.. 422..```

### Additional Testing Notes In This File

I have also created another file with some more testing notes

See File
```Additional-Comments.md```

These contained the things were missed / I did not have

Also some recommendations when running the repo / tests for longevity etc.

### Postman Collection

---

I also exported my collection into the repo just in case wanted to quickly test the APIs out

`Agify IO Collection - Kaluza.postman_collection.json`
