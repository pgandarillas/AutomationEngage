Given(/^I am logged in to the site$/) do
  @login = Login.new
  @login.load
  @login.authenticate $madmin_user,$madmin_psw
end

Given(/^I login to the site with "([^"]*)" as username and "([^"]*)" as password$/) do |user, psw|
  @login = Login.new
  @login.load
  @login.authenticate user, psw
end

And(/^I click on the "([^"]*)" main menu tab$/) do |link|
  @mainpage = MainPage.new
  @mainpage.click_specific_link link
end

And(/^I click on the "([^"]*)" option$/) do |link|
  @mainpage = MainPage.new
  @mainpage.click_specific_link link
end

And(/^I click on the "([^"]*)" button$/) do |button|
  @mainpage = MainPage.new
  @mainpage.clickButton button
end

When(/^I fill in "([^"]*)" field with "([^"]*)"$/) do |field, value|
  @mainpage = MainPage.new
  @mainpage.fill_value field, value
end

And(/^I check the "([^"]*)" checkbox$/) do |field|
  @mainpage = MainPage.new
  @mainpage.setCheckbox field, true
end

#######################################################
And(/^I click on the Administration main menu tab$/) do
  @users = UsersPage.new
  @users.clickAdminstrationTab
end

And(/^I click on the Users option$/) do
  @users.clickUsersLink
end

And(/^I fill in the search criteria field$/) do
  @users.fillin_searchcriteria(@users.new_user)
end

And(/^I click on the 'Search' button$/) do
  @users.clickSearchButton
end

Then(/^The users that match with the entered search criteria should be retrieved$/) do
  sleep 5
end