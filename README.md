# **VISI Child Test Automation Framework with AI Support**

## **Goal**
Our goal is to create a No Code / Low Code automation framework that enables any tester, whether manual or non-functional, to write test automation code with minimal knowledge of Java, Selenium, or framework experience.

## **Framework Overview**
This framework is based on the Cucumber BDD approach, incorporating the Page Object Model and JUnit for execution and validations. It is built using Maven.

### **Cucumber BDD Framework Components**
Testers should work with the following three files:

1. **Feature File:** Defines the test scenarios in a readable format.
2. **Step Definition:** Maps the steps in the feature file to code.
3. **Test Runner:** Executes the test cases.


-------------------------------------------------------------

**First, lets focus on how to capture the locator file:**
```
<?xml version="1.0" encoding="UTF-8"?>
<uiElements>
	<uiElement name="ProfileIcon">
		<identifier platform="android" type="xpath">//*[@text='Profile']
		</identifier>
		<identifier platform="web" type="xpath">//span[text()='Profile']
		</identifier>
	</uiElement>
</uiElements>
```

-> Here we can create uiElement tag in Page.xml file where tester needs to call identifer tag and pass platform and type of locator with value as text, here is sample xml file and it is maintained in src/main/resources and call it in feature file by pagename.locatorname

-------------------------------------------------------------

**Testers should write feature file by following below format:**

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

User select {string} from dropdown {string} using {string}                  - value as first string and locator name as second string and type as third string

User verify text {string} present in the {string} element 		    - value as first string and locator name as second string

User verify text contains {string} present in the {string} element	    - partial value as first string and locator name as second string

User scroll to {string} element						    - locator name as string 

User scroll to co-ordinates {string} x and {string} y			    - X coordinate as first string and Y as second string

User get text from element {string} and store as {string}		    - locator name as first string and variable to store as second string

User verify {string} element is selected				    - locator name as string 

User wait for element visibility {string}				    - locator name as string 

User wait for element presence {string}					    - locator name as string 

User wait for {int} seconds						    - seconds as int


-------------------------------------------------------------

Step definitions are already written in Visi parent framework and should be called from parent libarary

```
		<dependency>
			<groupId>org.visi</groupId>
			<artifactId>visi_parent_ai</artifactId>
			<version>1.0.1</version>
		</dependency>
```

-------------------------------------------------------------

At last, we should pass tag name in test runner to execute particular test and reports will be stored in Reports folder.

