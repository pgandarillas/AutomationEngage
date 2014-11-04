
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
end

When(/^The Forgot Username page is displayed$/) do
  sleep 5
end

When(/^The Forgot Password page is displayed$/) do
  sleep 5
end

And /^I clear the browser cookies$/ do
  browser = Capybara.current_session.driver.browser
  browser.manage.delete_all_cookies
  sleep(5)
end

Then(/^I verify that "([^"]*)" page should be displayed to the user$/) do |message|
  $result = @mainpage.verifymessage(message)
  $result.should eq(true)
  sleep 5
end

Then(/^I verify that "([^"]*)" error message should be displayed to the user$/) do |message|
  $result = @mainpage.verifymessage(message)
  $result.should eq(true)
  sleep 5
end

Then(/^I verify that the "([^"]*)" content should persist below the "Password do not match." error message$/) do |message|
  $result = @mainpage.verifymessage(message)
  $result.should eq(true)
  sleep 5
end


Then(/^I verify that exists the "([^"]*)" title$/) do |message|
  $result = @mainpage.verifymessage(message)
  $result.should eq(true)
end

Then(/^I verify that exists "([^"]*)" label$/) do |message|
  $result = @mainpage.verifymessage(message)
  $result.should eq(true)
end

Then(/^I verify that exists the "([^"]*)" textbox with the "([^"]*)" text$/) do |field, content|
  $result = @mainpage.verifyfieldexists(field, content)
  $result.should eq(true)
end

Then(/^I verify that exists "([^"]*)" buttons below the error message$/) do |name|
  $result = @mainpage.verifybuttonexists(name)
  $result.should eq(true)
end

###TC4###
Given(/^I login to the "([^"]*)" site with "([^"]*)" as "([^"]*)" and "([^"]*)" as "([^"]*)"$/) do |url, user, user_field, psw, psw_field|
  @mainpage = MainPage.new
  @mainpage.setPageUrl url
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

When(/^I navigate to the "([^"]*)" url$/) do |url|
  @mainpage.setPageUrl url
end

And(/^I fill in the "([^"]*)" field with "([^"]*)"$/) do |field, value|
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

And /^I select in "([^"]*)" the option "([^"]*)"$/ do |field, value|
  @mainpage.select_an_option(field, value)
  sleep(15)
end

And(/^I select "([^"]*)" option from the "([^"]*)" combobox$/) do |value, field|
  @mainpage.select_an_option field, value
end

And(/^I fill in "([^"]*)" in "([^"]*)" field, "([^"]*)" in "([^"]*)" field, "([^"]*)" in "([^"]*)" field, "([^"]*)" in "([^"]*)" field, "([^"]*)" in "([^"]*)" field, "([^"]*)" in "([^"]*)" field$/) do
|username, username_field, password, psw_field, repassword, repsw_field, first_name, fname_field, last_name, lname_field, email, email_field|
  @mainpage.fill_value username_field, username
  @mainpage.fill_value psw_field, password
  @mainpage.fill_value repsw_field, repassword
  @mainpage.fill_value fname_field, first_name
  @mainpage.fill_value lname_field, last_name
  @mainpage.fill_value email_field, email
end

And(/^I see the "([^"]*)" page$/) do |message|
  @mainpage.verifyElementExists message
end

Then(/^I should go back to the "([^"]*)" page$/) do |arg|
  unless page.current_url.include? "/User/Login"
    fail(ArgumentError.new("THE SIGN IN PAGE WAS NOT DISPLAYED!"))
  end
end

And(/^I should see the "([^"]*)" section$/) do |message|
  @mainpage.verifyElementExists message
end

And(/^I should see the "([^"]*)" button$/) do |button|
  @mainpage.verifyElementExists button
end

And(/^I see the "([^"]*)" message$/) do |message|
  @mainpage.verifyElementExists message
end

And(/^I should not see the "([^"]*)" section or the "([^"]*)" button$/) do |arg1, arg2|
  if @mainpage.has_signinthirdparty_text? or @mainpage.has_yammersignin_button?
    fail(ArgumentError.new("THE SIGN IN WITH 3RD PARTY ACCOUNT IS DISPLAYED!"))
  end
end

Then /^I fill in "([^"]*)" with "([^"]*)" username$/ do |field, value|
  @mainpage.fill_value(field, value)
end

And(/^I click on the "([^"]*)" button of Forgot Username page$/) do |button|
  @mainpage = MainPage.new
  @mainpage.clickButton button
end

When(/^The "([^"]*)" page is displayed$/) do |page|
  sleep 5
end

When(/^Leave empty "([^"]*)"$/) do |value|
  sleep 5
end

Then(/^I click on the "Reset password link" from user email$/) do
  links = Array.new
  Gmail.connect($femail_user, $femail_psw) do |gmail|
    gmail.inbox.find(:subject => 'Reset Password Request').each do |email|
      $startString = '<strong>Reset password link</strong>: '
      $endString = '</p>'
      $start = email.body.to_s.index($startString) + $startString.length
      $end = email.body.to_s.index($endString, $start)
      $linkLength = $end-$start
      $link = email.body.to_s.slice($start, $linkLength)
      links.push $link
      puts links
    end
    ##Link filtered
    $last_link = links.last()
    $first_link = links.first()

    #Launching the URL from the email
    $last_link = $last_link.gsub('amp', '')
    $last_link = $last_link.gsub(';', '')

    puts "First Link:   "+ $first_link + "\r"
    puts "Last Link:   "+ $last_link + "\r"
    sleep(5)
    # session = Capybara::Session.new(:selenium)
    visit($last_link)
    sleep(3)
    # session.fill_in('pw1', :with => $fnew_pass)
    # session.fill_in('pw2', :with => $fnew_pass)
    # session.click_link('Submit')
    # sleep(15)
  end
end

Then(/^I should receive and email to "([^"]*)" account with Password: "([^"]*)"$/) do |user, pass|
  inboxemails = @mainpage.getCountResetPasswordEmailReceived(user, pass)
  if inboxemails < 1
    fail(ArgumentError.new("NO RESET PASSWORD REQUEST WAS RECEIVED."))
  end
end

When(/^I login to gmail with "([^"]*)" as email and "([^"]*)" as password and open the "([^"]*)" email$/) do |email, psw, arg3|
  @mainpage.getUsernameRequestEmailLink email, psw
end

And(/^I open the "([^"]*)" link$/) do |arg|
  @mainpage.openUsernameRequestLink
end

Then(/^I should be redirected to the "([^"]*)" url$/) do |url|
  unless page.current_url == url
    fail(ArgumentError.new("THE USERNAME REQUEST LINK DOESN'T REDIRECT TO THE CORRECT URL!"))
  end
end
