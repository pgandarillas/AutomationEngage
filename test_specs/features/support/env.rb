require 'rubygems'
require 'selenium-webdriver'
require 'capybara'
require 'capybara/node/matchers'
require 'capybara/cucumber'
require 'rspec/expectations'
require 'rspec/matchers'
require 'site_prism'
require 'site_prism/waiter'
require 'gmail'

Capybara.default_driver = :selenium
Capybara.javascript_driver = :webkit  #:chrome

Capybara.register_driver :chrome do |app|
Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

##############
### Constants and global variables
##############

LOCAL_ENVIRONMENT ='https://pamela.qa356prod.spigit.com/User/Login'
LOCAL_ENVIRONMENT_HOME ='https://pamela.qa356prod.spigit.com/User/Login'
LOCAL_HOME ='https://pamela.qa356prod.spigit.com/User/Login'
LOCAL_PASS_RESET = 'https://pamela.qa356prod.spigit.com/User/Reset?action=password'
LOCAL_EMAIL = 'https://mail.google.com/mail/u/1/#inbox'
LOCAL_EMAIL_LINK = 'https://pamela.qa356prod.spigit.com/User/Reset?action=validateUserConfNum&conf_num=0plZEznA&username=pgandarillas'

$url_login = LOCAL_ENVIRONMENT
$url_home = LOCAL_ENVIRONMENT_HOME
$url_Local_home = LOCAL_HOME
$url_pass_reset = LOCAL_PASS_RESET
$url_email = LOCAL_EMAIL
$url_email_link = LOCAL_EMAIL_LINK

$admin_user = 'pgandarillas'
$admin_psw = 'Spigit123'
$admin_userreset = 'pgandarillas'
$email_user = 'pgandarillas@mindjet.com'
$email_psw = 'admin1234@'
$new_pass = 'Antfarm123'
$new_again = 'Antfarm123'
$newElement=0
$newShipTo=0


$madmin_user = 'margot'
$madmin_psw = 'Spigit123'

$aadmin_user = 'admin'
$aadmin_psw = 'antfarm123'

###Administration variables
$administration_tab = "//*[@id='navWrap']/nav/div/ul/li[7]/a"


###Setup Env for Frank
$fadmin_user = 'fsejas'
$fadmin_psw = 'Spigit123'
$fadmin_userreset = 'fsejas'
$femail_user = 'frank.sejas@mindjet.com'
$femail_psw = 'Control123'
$fnew_pass = 'Control123@'
$fnew_again = 'Control123@'
$fnewElement=0
$fnewShipTo=0