## Greetings %username% !

This is a quick manual on what we expect from you during performing the test task.

This will be a simple app that contains two features: Login & Checklist.

* First of all, get to know with the application under test, build the test app and check out its possibilities and bugs. 

* Second of all, we need to evaluate your qa manual background, so create down below:
 - short testplan 
 - list of the testcases
 - list of discovered issues
 
* Third of all, write test automation according test automation purposes  

* And fourth of all, push the whole project to github.com and notice us with a link to your repo on completion. 

Please reachout Oksana (otolstykh@readdle.com) if you have any questions.

## Good Luck!


#YOUR TASK STARTS HERE: 


# TEST PLAN: 

- Environment:
iPhone 11

- What parts of app will be tested:
UI


# LIST OF TEST CASES: 
// Only summaries of tests: e.g. 
- Perform login with empty password field
- Perform login with empty email field
- Perform login with wrong credentials
- Perform login with valid credentials
- Perform login without credentials
- Perform logout from app
- Perform select/unselect all checkboxes with "Complete All"/"Cancel All" button
- Perform select/unselect all checkboxes manually
- Perform sorting with "Sort by Name" button
- Perform check that "Sleep" checkbox have subtasks
- Perform select/unselect all subtask checkboxes with "Complete All"/"Cancel All" button
- Perform select/unselect all subtask checkboxes manually
- Perform sorting subtasks with "Sort by Name" button
- Perform check that after sorting subtasks, switching to main screen and switching to subtasks again all subtasks will stay sorted


# LIST OF DISCOVERED ISSUES:
// Only summaries of bug reports: e.g.
- (FIXED) Click to the checkbox switch to another checkbox (on the 2nd and 3rd displays)
- (FIXED) "Sort by name" button sorted wrong or not by name
- (FIXED) "Complete All" button disabled only text near checkbox
- (FIXED) "Complete All" button not changed to "Cancel All"
- (FIXED) "Sort by name" button can complete all checkbox
- (FIXED) Buttons "Complete All" and "Cancel All" not changed automatically when select/unselect all checkboxes manually
- (FIXED) Incorrect behavior of login
  login with same credentials can catch error
- (FIXED) When we sort by name "sleep" tab and go to main screen - when we go to "sleep" tab again it will be unsorted 
- (FIXED) Sorting don't saved in the sleep subtasks
- (FIXED) "Sort by Name" button can select "Sleep" checkbox, if use it after "Complete All"/"Cancel All" button
