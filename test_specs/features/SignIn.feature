Feature: SignIn Features
  Select objects from SignIn Pages
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
    Given I login to the "https://margotscomm.qa356prod.spigit.com/User/Login" site with "admin" as "Username" and "antfarm123" as "Password"
    And I click on the "Administration" main menu tab
    And I click on the "Users" option
    And I click on the "Add User" button
    And I fill in <username> in "new Username", <password> in "new Password", <password> in "Re-type Password", <first_name> in "First Name", <last_name> in "Last Name", <email> in "Email"
    And I click on the "Submit" button
    Then I should see the "User has been created" message
    And I click on the "Sign-Out" link
    When I navigate to the "https://margotscomm.qa356prod.spigit.com/User/Login" url
    And I fill in the "Username" field with "<wrong_username>"
    And I fill in the "Password" field with "<password>"
    And I click on the "Sign In" button
    Then I should see the "The username or password you entered is incorrect." message
    When I fill in the "Username" field with "<username>"
    And I fill in the "Password" field with "<password>"
    And I click on the "Sign In" button
    Then I should be successfully logged in
  Examples:
    | username     | password  | first_name   | last_name | email                 | wrong_username |
    | tester.2     | Spigit123 | Tester.2     |     LN    | tester.2@test.com     | tester.2x      |
    | tester_2     | Spigit123 | Tester_2     |     LN    | tester_2@test.com     | tester_2x      |
    | qa7          | Spigit123 | Qa7          |     LN    | qa7@test.com          | qa7x           |
    | qatestertwo2 | Spigit123 | Qatestetwo2  |     LN    | qatestertwo2@test.com | qatestertwo2x  |
    | tester.1     | Spigit123 | Tester.1     |     LN    | tester.1@test.com     | tester.1x      |
    | tester_1     | Spigit123 | Tester_1     |     LN    | tester_1@test.com     | tester_1x      |
    | qa1          | Spigit123 | Qa1          |     LN    | qa2@test.com          | qa1x           |
    | qatesterone1 | Spigit123 | Qatesterone1 |     LN    | qatesterone1@test.com | qatesterone1   |


  Scenario Outline: TC4 - Verify the password is validated
    Given I login to the "https://margotscomm.qa356prod.spigit.com/User/Login" site with "admin" as "Username" and "antfarm123" as "Password"
    And I click on the "Administration" main menu tab
    And I click on the "Users" option
    And I click on the "Add User" button
    And I fill in <username> in "new Username", <password> in "new Password", <password> in "Re-type Password", <first_name> in "First Name", <last_name> in "Last Name", <email> in "Email"
    And I click on the "Submit" button
    Then I should see the "User has been created" message
    And I click on the "Sign-Out" link
    When I navigate to the "https://margotscomm.qa356prod.spigit.com/User/Login" url
    And I fill in the "Username" field with "<username>"
    And I fill in the "Password" field with "<wrong_password>"
    And I click on the "Sign In" button
    Then I should see the "The username or password you entered is incorrect." message
    When I fill in the "Username" field with "<username>"
    And I fill in the "Password" field with "<password>"
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

  Scenario: TC7 - Verify that "Return to sign in" link and "Cancel" button redirect to the correct Sign In page (Public Site)
    Given I login to the "https://margotscomm.qa356prod.spigit.com/User/Login" site with "admin" as "Username" and "antfarm123" as "Password"
    And I click on the "Administration" main menu tab
    And I click on the "Site Themes and Access Settings" link
    And I select "Public" option from the "Community Access" combobox
    And I click on the "Site Themes and Access Settings Update" button
    And I click on the "Administration" main menu tab
    And I click on the "User Experience Management" option
    And I check the "Enable Yammer Login" checkbox
    And I click on the "User Experience Management Submit" button
    And I click on the "Administration" main menu tab
    And I click on the "Users" option
    And I click on the "Add User" button
    And I fill in "qa11" in "new Username" field, "Spigit123" in "new Password" field, "Spigit123" in "Re-type Password" field, "Tester" in "First Name" field, "11" in "Last Name" field, "qa11@test.com" in "Email" field
    And I click on the "Submit" button
    And I see the "User has been created" message
    And I click on the "Sign-Out" link
    When I navigate to the "https://margotscomm.qa356prod.spigit.com/User/Login" url
    And I click on the "Forgot your username?" link
    And I see the "Forgot Username" page
    And I fill in the "Forgot Username Email" field with "qa11@test.com"
    And I click on the "Forgot Username Cancel" button
    Then I should go back to the "Sign In" page
    And I should see the "Sign in with other accounts?" section
    And I should see the "Yammer Sign In" button
    When I click on the "Forgot your username?" link
    And I fill in the "Forgot Username Email" field with "qa11@test.com"
    And I click on the "Submit Forgot Username" button
    And I see the "Request Sent" page
    And I click on the "Return to sign in" link
    Then I should go back to the "Sign In" page
    And I should see the "Sign in with other accounts?" section
    And I should see the "Yammer Sign In" button

  Scenario: TC7 - Verify that "Return to sign in" link and "Cancel" button redirect to the correct Sign In page (Private Site)
    Given I login to the "https://margotscomm.qa356prod.spigit.com/User/Login" site with "admin" as "Username" and "antfarm123" as "Password"
    And I click on the "Administration" main menu tab
    And I click on the "Site Themes and Access Settings" link
    And I select "Private - Members Only" option from the "Community Access" combobox
    And I click on the "Site Themes and Access Settings Update" button
    And I click on the "Administration" main menu tab
    And I click on the "User Experience Management" option
    And I check the "Enable Yammer Login" checkbox
    And I click on the "User Experience Management Submit" button
    And I click on the "Administration" main menu tab
    And I click on the "Users" option
    And I click on the "Add User" button
    And I fill in "qa10" in "new Username" field, "Spigit123" in "new Password" field, "Spigit123" in "Re-type Password" field, "Tester" in "First Name" field, "10" in "Last Name" field, "qa10@test.com" in "Email" field
    And I click on the "Submit" button
    And I see the "User has been created" message
    And I click on the "Sign-Out" link
    When I navigate to the "https://margotscomm.qa356prod.spigit.com/User/Login" url
    And I click on the "Forgot your username?" link
    And I see the "Forgot Username" page
    And I fill in the "Forgot Username Email" field with "qa10@test.com"
    And I click on the "Forgot Username Cancel" button
    Then I should go back to the "Sign In" page
    And I should not see the "Sign in with other accounts?" section or the "Yammer Sign In" button
    When I click on the "Forgot your username?" link
    And I fill in the "Forgot Username Email" field with "qa10@test.com"
    And I click on the "Submit Forgot Username" button
    And I see the "Request Sent" page
    And I click on the "Return to sign in" link
    Then I should go back to the "Sign In" page
    And I should not see the "Sign in with other accounts?" section or the "Yammer Sign In" button

#  Scenario: TC#8 Scenario 1 - Invalid Email Address
#    Given I open a new browser
#    Given I go to the url "https://frank.qa356prod.spigit.com/User/Login"
#    And I click on the "Forgot your username?" link
#    When The Forgot Username page is displayed
#    Then I fill in "Forgot Username" with "frank.sejas1@mindjet.com" credential
#    And I click on the "Submit Forgot Username" button of Forgot Username page
#    Then I verify that "The email address you entered is not valid. Please try again" error message should be displayed to the user
#    Then I verify that exists the "Forgot Username" title
#    Then I verify that exists "Please enter your email address to continue." label
#    Then I verify that exists the "Email" textbox with the "frank.sejas1@mindjet.com" text
#    Then I verify that exists "Submit" buttons below the error message
#    Then I verify that exists "Cancel" buttons below the error message
#
#
#  Scenario: TC#8 Scenario 2 - Verify that the "Email" is validated
#    Given I open a new browser
#    Given I go to the url "https://frank.qa356prod.spigit.com/User/Login"
#    And I click on the "Forgot your username?" link
#    When The Forgot Username page is displayed
#    Then I fill in "Forgot Username" with "frank.sejas@mindjet.com" credential
#    And I click on the "Submit Forgot Username" button of Forgot Username page
#    Then I verify that "Request Sent!" page should be displayed to the user

  ############################################################################3

#    Then I verify that accepts The email address that contains special characters,
#    Then I verify that accepts The email address that contains number
#    Then I verify that accepts short or long should be accepted
#
#    Then I verify that user should receive the ""Username Request"" email with the Username data correctly displayed.
#      |wrong_email | email                  |
#      |qa3@test.com|                        |
#      |            | q@#$a3@test.com        |
#      |            | 123456789qa4@test.com  |
#      |            | qa@test.com            |

  Scenario: TC#14 Scenario 1 - New password fields are empty
    Given the sign in page is displayed
    And I fill in "Username" with "admin" credential
    And I fill in "Password" with "antfarm123" credential
    And I click on the "Forgot your password?" link
    When The Forgot Password page is displayed
    Then I fill in "Forgot Password" with "fsejas" username
    And I click on the "Submit Forgot Password" button of Forgot Username page
    And I click on the "Reset password link" from user email
    When The "Reset Password" page is displayed
    And Leave empty "New Password"
    And I fill in "Enter Password Again" with "admin" credential
    And I click on the "Submit Reset Password" button
    Then I verify that "Passwords do not match." error message should be displayed to the user
    Then I verify that the "Reset Password" content should persist below the "Password do not match." error message
    When  I click on the "Cancel" button
    Then I verify that the user's “currentPassword1” password shouldn't be changed
    And I verify that I’m able to sign in to the site with his current “currentPassword1” password.


#  Scenario 2: TC14. new passwords don't match
#
#    Given the sign in page is displayed
#    And I fill in "Username" with "admin" credential
#    And I fill in "Password" with "antfarm123" credential
#    And I click on the "Forgot your password?" link
#    When The Forgot Password page is displayed
#    Then I fill in "Forgot Password" with "fsejas" username
#    And I click on the "Submit Forgot Username" button of Forgot Username page
#    And I click on the "Reset password link" button
#    And The "Reset Password" page is displayed
#    When I fill in "New Password" with "admin" credential
#    When I fill in "Enter Password Again" with "admin2" credential
#    And I click on the "Submit" button
#    Then I verify that "Password do not match." error message should be displayed to the user
#    Then I verify that the "Reset Password" content should persist below the "Password do not match." error message
#    When  I click on the "Cancel" button
#    Then I verify that the user's “currentPassword1” password shouldn't be changed
#    And I verify that I’m able to sign in to the site with his current “currentPassword1” password.
#
#  Scenario 3: TC14. new password matches with the current password
#
#    Given the sign in page is displayed
#    And I fill in "Username" with "admin" credential
#    And I fill in "Password" with "antfarm123" credential
#    And I click on the "Forgot your password?" link
#    When The Forgot Password page is displayed
#    Then I fill in "Forgot Password" with "fsejas" username
#    And I click on the "Submit Forgot Username" button of Forgot Username page
#    And I click on the "Reset password link" button
#    And The "Reset Password" page is displayed
#    When I fill in "New Password" with "CurrentPassword1" credential
#    When I fill in "Enter Password Again" with "CurrentPassword1" credential
#    And I click on the "Submit" button
#    Then I verify that "New password entered matches old password." error message should be displayed to the user
#    Then I verify that the "Reset Password" content should persist below the "Password do not match." error message
#    When  I click on the "Cancel" button
#    Then I verify that the user's “currentPassword1” password shouldn't be changed
#    And I verify that I’m able to sign in to the site with his current “currentPassword1” password.
#
#  Scenario 4: TC14. new password matches with an password used in the last 90 days
#
#    Given the sign in page is displayed
#    And I fill in "Username" with "admin" credential
#    And I fill in "Password" with "antfarm123" credential
#    And I click on the "Forgot your password?" link
#    When The Forgot Password page is displayed
#    Then I fill in "Forgot Password" with "fsejas" username
#    And I click on the "Submit Forgot Username" button of Forgot Username page
#    And I click on the "Reset password link" button
#    And The "Reset Password" page is displayed
#    When I fill in "New Password" with "SameOldPassword1" credential
#    When I fill in "Enter Password Again" with "SameOldPassword1" credential
#    And I click on the "Submit" button
#    Then I verify that "New password entered matches old password." error message should be displayed to the user
#    Then I verify that the "Reset Password" content should persist below the "Password do not match." error message
#    When  I click on the "Cancel" button
#    Then I verify that the user's “currentPassword1” password shouldn't be changed
#    And I verify that I’m able to sign in to the site with his current “currentPassword1” password.
#
#  Scenario 5: TC14. new password doesn't meet the password policy
#
#    Given the sign in page is displayed
#    And I fill in "Username" with "admin" credential
#    And I fill in "Password" with "antfarm123" credential
#    And I click on the "Forgot your password?" link
#    When The Forgot Password page is displayed
#    Then I fill in "Forgot Password" with "fsejas" username
#    And I click on the "Submit Forgot Username" button of Forgot Username page
#    And I click on the "Reset password link" button
#    And The "Reset Password" page is displayed
#    When I fill in "New Password" with "invalidpassword" credential
#    When I fill in "Enter Password Again" with "invalidpassword" credential
#    And I click on the "Submit" button
#    Then I verify that "Password doesn't meet the requirements. Please try again." error message should be displayed to the user
#    Then I verify that the "Reset Password" content should persist below the "Password do not match." error message
#    When  I click on the "Cancel" button
#    Then I verify that the user's “currentPassword1” password shouldn't be changed
#    And I verify that I’m able to sign in to the site with his current “currentPassword1” password.
#
#  Scenario 6: TC14. new password is valid
#
#    Given the sign in page is displayed
#    And I fill in "Username" with "admin" credential
#    And I fill in "Password" with "antfarm123" credential
#    And I click on the "Forgot your password?" link
#    When The Forgot Password page is displayed
#    Then I fill in "Forgot Password" with "fsejas" username
#    And I click on the "Submit Forgot Username" button of Forgot Username page
#    And I click on the "Reset password link" button
#    And The "Reset Password" page is displayed
#    When I fill in "New Password" with "Spigit123" credential
#    When I fill in "Enter Password Again" with "Spigit123" credential
#    And I click on the "Submit" button
#    Then I verify that "password is changed successfully." successfully message should be displayed to the user

    Then I verify that accepts The email address that contains special characters,
    Then I verify that accepts The email address that contains number
    Then I verify that accepts short or long should be accepted

    Then I verify that user should receive the ""Username Request"" email with the Username data correctly displayed.
      |wrong_email | email                  |
      |qa3@test.com|                        |
      |            | q@#$a3@test.com        |
      |            | 123456789qa4@test.com  |
      |            | qa@test.com            |

  Scenario Outline: TC11. Verify that the "Username" is validated when wrong username is set.
    Given I open a new browser
    Given I navigate to the "https://chriscommunity1.qa356prod.spigit.com/User/Login" url
    And I click on the "Forgot your password?" link
    And I fill in the "Forgot Password" field with "<wrong_username>"
    And I click on the "Submit Forgot Username" button
    Then I should see the "The username you entered is not valid. Please try again." message
    And I should see the "Forgot Password Label" message
    And I should see the "Username Field" message
    And I should see the "Submit" message
    And I should see the "Cancel" message
  Examples:
    | wrong_username |
    | tester.1x      |
    |                |
    | qa1x test 1    |

  Scenario Outline: TC11. Verify that the "Username" is validated
    Given I login to the "https://chriscommunity1.qa356prod.spigit.com/User/Login" site with "Christian" as "Username" and "Control123" as "Password"
    And I click on the "Administration" main menu tab
    And I click on the "Users" option
    And I click on the "Add User" button
    And I fill in <username> in "new Username", <password> in "new Password", <password> in "Re-type Password", <first_name> in "First Name", <last_name> in "Last Name", <email> in "Email"
    And I click on the "Submit" button
    Then I should see the "User has been created" message
    And I click on the "Sign-Out" link
    Given I navigate to the "https://chriscommunity1.qa356prod.spigit.com/User/Login" url
    And I click on the "Forgot your password?" link
    When I fill in the "Forgot Password" field with "<username>"
    And I click on the "Submit Forgot Username" button
    Then I should see the "Request Sent" message
    And I should see the "Follow Instructions on Email" message
    Then I should receive and email to "christian.canipa@mindjet.com" account with Password: "<emailPass>"
    Given I login to the "https://chriscommunity1.qa356prod.spigit.com/User/Login" site with "<username>" as "Username" and "<password>" as "Password"
    Then I click on the "My Username" link
    And I click on the "Edit Profile" button
    And I fill in the "Email" field with "<newEmail>"
    Then I click on the "Update Profile" button
    And I should see the "Update Profile Success" message
    And I click on the "Sign-Out" link
  Examples:
    | username     | password  | first_name   | last_name | email                         | emailPass | newEmail                       |
    | tester.1     | Spigit123 | Tester.1     |     LN    | christian.canipa@mindjet.com  | Chris@123 | christian.canipa@mindjet10.com |
    | tester_1     | Spigit123 | Tester_1     |     LN    | christian.canipa@mindjet.com  | Chris@123 | christian.canipa@mindjet20.com |
    | qa1          | Spigit123 | Qa1          |     LN    | christian.canipa@mindjet.com  | Chris@123 | christian.canipa@mindjet30.com |
    | qatesterone1 | Spigit123 | Qatesterone1 |     LN    | christian.canipa@mindjet.com  | Chris@123 | christian.canipa@mindjet40.com |


  Scenario: TC10 - Verify that Sign in page is opened from the "Username Request" email (Public site)
    Given I login to the "https://margotscomm.qa356prod.spigit.com/User/Login" site with "admin" as "Username" and "antfarm123" as "Password"
    And I click on the "Administration" main menu tab
    And I click on the "Site Themes and Access Settings" link
    And I select "Public" option from the "Community Access" combobox
    And I click on the "Site Themes and Access Settings Update" button
    And I click on the "Administration" main menu tab
    And I click on the "User Experience Management" option
    And I check the "Enable Yammer Login" checkbox
    And I click on the "User Experience Management Submit" button
    And I click on the "Sign-Out" link
    And I click on the "Forgot your username?" link
    And I fill in the "Forgot Username Email" field with "margot.valencia@mindjet.com"
    And I click on the "Submit Forgot Username" button
    And I see the "Request Sent" page
    When I login to gmail with "margot.valencia@mindjet.com" as email and "Mirrorman.1224" as password and open the "Username Request" email
    And I open the "Click here to sign in" link
    Then I should be redirected to the "https://margotscomm.qa356prod.spigit.com/User/Login" url
    And I should see the "Sign in with other accounts?" section
    And I should see the "Yammer Sign In" button

  Scenario: TC10 - Verify that Sign in page is opened from the "Username Request" email (Private site)
    Given I login to the "https://margotscomm.qa356prod.spigit.com/User/Login" site with "admin" as "Username" and "antfarm123" as "Password"
    And I click on the "Administration" main menu tab
    And I click on the "Site Themes and Access Settings" link
    And I select "Private - Members Only" option from the "Community Access" combobox
    And I click on the "Site Themes and Access Settings Update" button
    And I click on the "Administration" main menu tab
    And I click on the "User Experience Management" option
    And I check the "Enable Yammer Login" checkbox
    And I click on the "User Experience Management Submit" button
    And I click on the "Sign-Out" link
    And I click on the "Forgot your username?" link
    And I fill in the "Forgot Username Email" field with "margot.valencia@mindjet.com"
    And I click on the "Submit Forgot Username" button
    And I see the "Request Sent" page
    When I login to gmail with "margot.valencia@mindjet.com" as email and "Mirrorman.1224" as password and open the "Username Request" email
    And I open the "Click here to sign in" link
    Then I should be redirected to the "https://margotscomm.qa356prod.spigit.com/User/Login" url
    And I should not see the "Sign in with other accounts?" section or the "Yammer Sign In" button