@MyntraLogin
Feature: Verify Myntra Login Functionality

Scenario: Verify user able to search any keywords
Given User navigate to 'automationExercise' application
Then User verify 'Home.ProfileIcon' present in the page
When User clicks on 'Home.ProfileIcon'
Then User verify 'Login.LoginSignUpButton' present in the page
When User clicks on 'Login.LoginSignUpButton'
#Then User verify 'Login.LoginSignUpPageBanner' present in the page
And User verify 'Login.MobileNumberInputFeild' present in the page
When User enter '9797910101' in 'Login.MobileNumberInputFeild' field
And User clicks on 'Login.LoginContinueButton'
#Then User verify 'Login.VerifyOtpHeader' present in the page
#When User clicks on 'Login.ContinueWithPassWordLink'
#Then User verify 'Login.PassWordInputFeild' present in the page
#When User clicks on 'Login.LoginButton'
