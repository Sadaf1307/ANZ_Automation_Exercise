# ANZAutomationExercise

Requirements
Node version 6 or higher, preferable latest 

How to start - 
Choose one of the following options:

Download or clone the git repo — git clone https://github.com/Sadaf1307/ANZ_Automation_Exercise.git

Then:
Install the dependencies (yarn install or npm install [yarn preferred])

To run selenium server 
yarn add selenium-standalone@latest -g or npm install selenium-standalone@latest (already added in package.json)
selenium-standalone install && selenium-standalone start

How to run the test:

Start the local web server:
$ yarn run local-webserver

To run your tests just call the WDIO runner:
$ yarn run wdio

Running single feature
$ yarn run wdio -- --spec ./test/features/select.feature

One can see the results by Generating Allure Report
Allure requires Java 8 or higher

Install Allure Command Line [npm install -g allure-commandline --save-dev]
and process the results directory:

allure generate --clean && allure open
This will generate a report (by default in ./allure-report), and open it in your browser.