
Given(/^I open a new browser$/) do
  @mainpage = MainPage.new
  @mainpage.load
  sleep(2)
end

Given(/^I go to the url "([^"]*)"$/) do |url|
  visit(url)
  sleep(12)
end

Then(/^I click on the Forgot your username$/) do
  @mainpage = MainPage.new
  @mainpage.load
  @mainpage.clickforgotusernamelink
end

Then(/^I verify that "([^"]*)" contains "([^"]*)" name$/) do |field, value|
  $result = @mainpage.verifyusername(field, value)
  $result.should eq(true)
end

Then(/^I click on the Forgot your password$/) do
  @mainpage = MainPage.new
  @mainpage.load
  @mainpage.clickforgotpasswordlink
end

And(/^I click on the "([^"]*)" link of the page$/) do |link|
  #@mainpage = MainPage.new
  @mainpage.click_specific_link(link)
 end

And /^I fill in "([^"]*)" with "([^"]*)" credential$/ do |field, value|
  #@mainpage = MainPage.new
  @mainpage.fill_value(field, value)
end

When(/^the sign in page is displayed$/) do
  @mainpage = MainPage.new
  @mainpage.load
  sleep 5
end

And(/^I click on the "([^"]*)" button of Sign In page$/) do |button|
  @mainpage = MainPage.new
  @mainpage.clickButton button
end

And(/^I click on the "([^"]*)" link$/) do |link|
  @mainpage = MainPage.new
  @mainpage.click_specific_link(link)
  sleep 5
end

And /^I clear the browser cookies$/ do
  browser = Capybara.current_session.driver.browser
  browser.manage.delete_all_cookies
  sleep(5)
end

###TC4###
Given(/^I login to the "([^"]*)" site with "([^"]*)" as "([^"]*)" and "([^"]*)" as "([^"]*)"$/) do |url, user, user_field, psw, psw_field|
  @mainpage = MainPage.new
  @mainpage.load
  @mainpage.fill_value user_field, user
  @mainpage.fill_value psw_field, psw
  @mainpage.clickButton "Sign In"
end

And(/^I fill in (.*) in "([^"]*)", (.*) in "([^"]*)", (.*) in "([^"]*)", (.*) in "([^"]*)", (.*) in "([^"]*)", (.*) in "([^"]*)"$/) do
  |username, username_field, password, psw_field, repassword, repsw_field, first_name, fname_field, last_name, lname_field, email, email_field|
  @mainpage.fill_value username_field, username
  @mainpage.fill_value psw_field, password
  @mainpage.fill_value repsw_field, repassword
  @mainpage.fill_value fname_field, first_name
  @mainpage.fill_value lname_field, last_name
  @mainpage.fill_value email_field, email
end

# When(/^I go to the url "([^"]*)"$/) do |arg|
#   @mainpage.load
# end

And(/^I fill in the "([^"]*)" field with (.*)$/) do |field, value|
  @mainpage.fill_value field, value
end

Then(/^I should see the "([^"]*)" message$/) do |message|
  @mainpage.verifyElementExists message
end

Then(/^I should be successfully logged in$/) do
  if page.current_url.include? "/User/LoginAction"
    fail(ArgumentError.new("USER WAS NOT LOGGED IN!"))
  end
end