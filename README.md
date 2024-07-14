VISI Child Test Automation Framework with AI Support

Our Goal is to create a No Code / Low Code automation framework, which helps any tester (manual / non-functional testers) to write the test automation code with out minimal knowledge on java / selenium / framework experience.

This framework is based on Cucumber BDD Approach which also includes Page Object Model and Junit for execution and validations. It is built using Maven.

As part of cucumber Bdd framework:
Testers should follow 3 files,
  1. Feature File
  2. Step Definition
  3. Test Runner

-------------------------------------------------------------

First, lets focus on how to capture the locator file:

**<?xml version="1.0" encoding="UTF-8"?>
<uiElements>
	<uiElement name="ProfileIcon">
		<identifier platform="android" type="xpath">//*[@text='Profile']
		</identifier>
		<identifier platform="web" type="xpath">//span[text()='Profile']
		</identifier>
	</uiElement>
</uiElements>**

-> Here we can create uiElement tag in Page.xml file where tester needs to call identifer tag and pass platform and type of locator with value as text, here is sample xml file and it is maintained in src/main/resources and call it in feature file by pagename.locatorname

-------------------------------------------------------------

Testers should write feature file by following below format:

User navigate to {string} application                                       - Paramater should be Application Url key from property file

User verify {string} displayed in the page                                  - locator name as string
User verify {string} present in the page                                    - locator name as string
User press enter key on {string}                                            - locator name as string
User clicks on {string}                                                     - locator name as string 
User clicks on {string} using actions                                       - locator name as string
User clicks on {string} using javascript                                    - locator name as string
User perform double click on {string}                                       - locator name as string 
User enter {string} in {string} field                                       - value as first string and locator name as second string
User enter {string} in {string} field using actions                         - value as first string and locator name as second string
User enter {string} in {string} field using javascript                      - value as first string and locator name as second string
User select {string} from dropdown {string} using {string}                 
User verify text {string} present in the {string} element
User verify text contains {string} present in the {string} element
User scroll to {string} element
User scroll to co-ordinates {string} x and {string} y
User get text from element {string} and store as {string}
User verify {string} element is selected
User wait for element visibility {string}
User wait for element presence {string}
User wait for {int} seconds
