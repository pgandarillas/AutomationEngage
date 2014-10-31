Feature: SignIn Features
#  Select objects from SignIn Pages
#  Scenario: Select objects from sign in
#    When the sign in page is displayed
#    And I click on the "Forgot your user name?" link
#    When the sign in page is displayed
#    And I click on the "Forgot your password?" link
#    When the sign in page is displayed
#    And I fill in "Username" with "admin" credential
#    And I fill in "Password" with "antfarm123" credential
#    And I click on the "Sign In" button of Sign In page
#    And I click on the "Activity" link
#    And I click on the "Post Idea" link
#    And I click on the "View Ideas" link
#    And I click on the "Leaderboard" link
#    And I click on the "Store" link
#    And I click on the "Dashboard" link
#    And I click on the "Administration" link
#    And I click on the "Challenges" link
#    And I click on the "SpigitLogo" link

Scenario Outline: TC4 - Verify the username is validated
  Given I login to the "www" site with "admin" as "Username" and "antfarm123" as "Password"
  And I click on the "Administration" main menu tab
  And I click on the "Users" option
  And I click on the "Add User" button
  And I fill in <username> in "new Username", <password> in "new Password", <password> in "Re-type Password", <first_name> in "First Name", <last_name> in "Last Name", <email> in "Email"
  And I click on the "Submit" button
  Then I should see the "User has been created" message
  And I click on the "Sign-Out" link
  When I go to the url "www"
  And I fill in the "Username" field with <wrong_username>
  And I fill in the "Password" field with <password>
  And I click on the "Sign In" button
  Then I should see the "The username or password you entered is incorrect." message
  When I fill in the "Username" field with <username>
  And I fill in the "Password" field with <password>
  And I click on the "Sign In" button
  Then I should be successfully logged in
  Examples:
    | username     | password  | first_name   | last_name | email                 | wrong_username |
    | tester.1     | Spigit123 | Tester.1     |     LN    | tester.1@test.com     | tester.1x      |
    | tester_1     | Spigit123 | Tester_1     |     LN    | tester_1@test.com     | tester_1x      |
    | qa1          | Spigit123 | Qa1          |     LN    | qa2@test.com          | qa1x           |
    | qatesterone1 | Spigit123 | Qatesterone1 |     LN    | qatesterone1@test.com | qatesterone1   |


Scenario Outline: TC4 - Verify the password is validated
    Given I login to the "www" site with "admin" as "Username" and "antfarm123" as "Password"
    And I click on the "Administration" main menu tab
    And I click on the "Users" option
    And I click on the "Add User" button
    And I fill in <username> in "new Username", <password> in "new Password", <password> in "Re-type Password", <first_name> in "First Name", <last_name> in "Last Name", <email> in "Email"
    And I click on the "Submit" button
    Then I should see the "User has been created" message
    And I click on the "Sign-Out" link
    When I go to the url "www"
    And I fill in the "Username" field with <username>
    And I fill in the "Password" field with <wrong_password>
    And I click on the "Sign In" button
    Then I should see the "The username or password you entered is incorrect." message
    When I fill in the "Username" field with <username>
    And I fill in the "Password" field with <password>
    And I click on the "Sign In" button
    Then I should be successfully logged in
  Examples:
    | username     | password     | first_name | last_name | email         | wrong_password |
    | qa2          | _Spigit.123  | Tester     | 2         | qa2@test.com  | 123456         |
    | qa3          | 12345aB      | Tester     | 3         | qa3@test.com  | 123456         |
    | qa4          | Abc123       | Tester     | 4         | qa4@test.com  | 123456         |
    | qa5          | Asdfghjkl123 | Tester     | 5         | qa5@test.com  | 123456         |

  Scenario: TC5. Test Sign In with Public Site option
    Given I open a new browser
    Given I go to the url "https://frank.qa356prod.spigit.com/User/Login"
    Given I fill in "Username" with "admin" credential
    Given I fill in "Password" with "antfarm123" credential
    Given I click on the "Sign In" button of Sign In page
    Given I click on the "Administration" link
    Given I click on the "Site Themes and Access Settings" link
    Given I select in "Community Access" the option "Public"
    Given I click on the "Sign Out" link
    Given I go to the url "https://frank.qa356prod.spigit.com/User/Login"
    Given I fill in "Username" with "admin" credential
    Given I fill in "Password" with "antfarm123" credential
    When I check the "Remember Username" checkbox
    When I click on the "Sign In" button of Sign In page
    When I click on the "Sign Out" link
    Then I go to the url "https://frank.qa356prod.spigit.com/User/Login"
    Then I verify that "Username" contains "admin" name
    Then I fill in "Password" with "antfarm123" credential
    Then I click on the "Sign In" button of Sign In page
    Then I clear the browser cookies
    Then I click on the "Sign Out" link
    Then I go to the url "https://frank.qa356prod.spigit.com/User/Login"
    Then I verify that "Username" contains "" name

  Scenario: TC5. Test Sign In with Private Site option
    Given I open a new browser
    Given I go to the url "https://frank.qa356prod.spigit.com/User/Login"
    Given I fill in "Username" with "admin" credential
    Given I fill in "Password" with "antfarm123" credential
    Given I click on the "Sign In" button of Sign In page
    Given I click on the "Administration" link
    Given I click on the "Site Themes and Access Settings" link
    Given I select in "Community Access" the option "Private - Members Only"
    Given I click on the "Sign Out" link
    Given I go to the url "https://frank.qa356prod.spigit.com/User/Login"
    Given I fill in "Username" with "admin" credential
    Given I fill in "Password" with "antfarm123" credential
    When I check the "Remember Username" checkbox
    When I click on the "Sign In" button of Sign In page
    When I click on the "Sign Out" link
    Then I go to the url "https://frank.qa356prod.spigit.com/User/Login"
    Then I verify that "Username" contains "admin" name
    Then I fill in "Password" with "antfarm123" credential
    Then I click on the "Sign In" button of Sign In page
    Then I clear the browser cookies
    Then I click on the "Sign Out" link
    Then I go to the url "https://frank.qa356prod.spigit.com/User/Login"
    Then I verify that "Username" contains "" name



