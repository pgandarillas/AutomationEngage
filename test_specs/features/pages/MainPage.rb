require 'capybara/rspec'
class MainPage < SitePrism::Page
  set_url $url_login

  ###SigIn Elements###
  element :username_field_login, '#j_username'
  element :password_field_login, '#j_password'
  element :reset_user_link, :xpath, '//*[@id="loginForm"]/div[1]/a'
  element :reset_password_link, :xpath, '//*[@id="loginForm"]/div[2]/a'
  element :logo_link, :xpath, '//*[@id="logo"]/a/img'
  element :activity_link, :xpath, '//*[@id="navWrap"]/nav/div/ul/li[1]/a'
  element :postidea_link, :xpath, '//*[@id="navWrap"]/nav/div/ul/li[2]/a'
  element :viewideas_link, :xpath, '//*[@id="navWrap"]/nav/div/ul/li[3]/a'
  element :leaderboard_link, :xpath, '//*[@id="navWrap"]/nav/div/ul/li[4]/a'
  element :store_link, :xpath, '//*[@id="navWrap"]/nav/div/ul/li[5]/a'
  element :challenge_link, :xpath, '//*[@id="navWrap"]/nav/div/ul/li[8]/a'
  element :dashboard_link, :xpath, '//*[@id="navWrap"]/nav/div/ul/li[6]/a'
  element :administration_link,:xpath, ".//li/a[@href='/Page/Administration']"
  element :signin_button, :xpath, '//*[@id="loginForm"]/div[4]/div/a/span/strong'
  element :signout_link, :xpath, "//a[@href='/User/Logout']"
  element :incorrectusernamepassword_text, :xpath, "//*[contains(text(),'The username or password you entered is incorrect.')]"
  element :sitethemesandaccesssettings_link, :xpath, '//*[@id="contents"]/div/div[2]/table/tbody/tr[6]/td/div[1]/a'
  element :rememberusername_checkbox, :xpath, '//*[@id="remember_username"]'


  ###Challenges Elements###
  element :new_challenge_link, :xpath, "//*[@id='site_challenge_lists']/div[3]/span[4]/a"
  element :challenge_link, :xpath, "//*[@id='navWrap']/nav/div/ul/li[8]/a"
  element :challenge_title, "#title"
  element :challenge_description, "#content"
  element :challenge_template, :xpath, "//*[@id='postsitechallengeform']/div[3]/a/span[1]"
  element :challenge_default_template, :xpath, "//*[@id='postsitechallengeform']/div[3]/a/ul/li[1]/a"
  element :challenge_start_time, :xpath, "//*[@id='postsitechallengeform']/div[7]/div[2]/a/span[1]"
  element :challenge_start_time_second_option_xpath, :xpath, "//*[@id='postsitechallengeform']/div[7]/div[2]/a/span[2]"
  element :challenge_time_zone,  :xpath, "//*[@id='postsitechallengeform']/div[7]/div[3]/a/span[1]"
  element :challenge_time_zone_second_option,  :xpath, "//*[@id='postsitechallengeform']/div[7]/div[3]/a/span[1]"
  element :challenge_expand_phase_editor,  :xpath, "//*[@id='postsitechallengeform']/div[9]/div[2]/a"
  element :challenge_click_create_challenge, :xpath, "//*[@id='postsitechallengeform']/div[14]/div/a/span"
  @@second_option_xpath = "//*[@id='postsitechallengeform']/div[7]/div[2]/a/span[2]"
  @@starttime_secondoption = 'config-single-com.spigit.reputation.ReputationConfig.reputationPolicy'

  ###TestEmail Elements
  #element :username_reset, :xpath, '//*[@id="resetRequestForm"]/div[2]/input'
  element :submit_forgotuser_button, :xpath, '//*[@id="resetRequestForm"]/div[2]/div[1]/a/span'
  element :username_reset, "#resetRequestForm > div.reset-password-container > div.form-element > input"

  ###Users Page variables
  element :users_link, :xpath, "//*[@id='contents']/div/div[2]/table/tbody/tr[3]/td/div[1]/a"
  element :username_field, :xpath, "//*[@id='username']"
  element :password_field, :xpath, "//*[@id='password']"
  element :repassword_field, :xpath, "//*[@id='retyped_password']"
  element :firstname_field, :xpath, "//*[@id='firstname']"
  element :lastname_field, :xpath, "//*[@id='lastname']"
  element :email_field, :xpath, "//*[@id='email']"
  element :sendemail_checkbox, :xpath, "//*[@id='sendemail']"
  element :adduser_button, :xpath, "//*[@id='user_admin_fresh']/div[6]/div/a/span"
  element :submit_button, :xpath, "//*[@id='AdminAddUser']/table/tbody/tr[8]/td[2]/a/span"
  element :usercreated_text, :xpath, "//div[contains(@label, 'has been created.')]/a/h2"

  ###User Experience Management variables
  element :userexperience_link, :xpath, "//*[@id='contents']/div/div[2]/table/tbody/tr[9]/td/div[3]/a"
  element :registrationquestions, :xpath, "//*[@id='config-single-com.spigit.user.UserConfig.userRegistrationQuestions']"
  element :fullnamerequired, :xpath, "//*[@id='config-single-com.spigit.user.UserConfig.firstAndLastNameRequired']"
  element :nousersonline, :xpath, "//*[@id='config-single-com.spigit.user.UserConfig.numUsersOnline']"
  element :uploadslimitmember, :xpath, "//*[@id='config-single-com.spigit.user.UserConfig.numResourcesUser']"
  element :uploadslimitadmin, :xpath, "//*[@id='config-single-com.spigit.user.UserConfig.numResourcesAdmin']"
  element :noideasopenchallenge, :xpath, "//*[@id='config-single-com.spigit.user.UserConfig.numChallengeIdeaInOpenPage']"
  element :differentemailinvite, :xpath, "//*[@id='config-single-com.spigit.user.UserConfig.invitedUserCanChangeEmailAddress']"
  element :shownonmemberprofile, :xpath, "//*[@id='config-single-com.spigit.user.UserConfig.showNonMemberProfile']"
  element :emailregularexpression, :xpath, "//*[@id='config-single-com.spigit.user.UserConfig.invitedUserEmailAddress']"
  element :showuseremail, :xpath, "//*[@id='config-single-com.spigit.user.UserConfig.showUserEmailOnProfile']"
  element :displayusersignature, :xpath, "//*[@id='config-single-com.spigit.user.UserConfig.displayUserSignature']"
  element :showusernetworth, :xpath, "//*[@id='config-single-com.spigit.config.DisplayConfig.showUserNetworth']"
  element :showfullresume, :xpath, "//*[@id='config-single-com.spigit.config.DisplayConfig.showFullResume']"
  element :showuserfullname, :xpath, "//*[@id='config-single-com.spigit.config.DisplayConfig.showUserFullName']"
  element :showprivacypreferences, :xpath, "//*[@id='config-single-com.spigit.config.DisplayConfig.showPrivacyPreferences']"
  element :showuploadavatar, :xpath, "//*[@id='config-single-com.spigit.config.DisplayConfig.showUploadAvatar']"
  element :avatarmaxwidth, :xpth, "//*[@id='config-single-com.spigit.config.DisplayConfig.avatarMaxWidth']"
  element :avatarminwidth, :xpath, "//*[@id='config-single-com.spigit.config.DisplayConfig.avatarMaxHeight']"
  element :showbiography, :xpath, "//*[@id='config-single-com.spigit.config.DisplayConfig.showBiography']"
  element :showuserstats, :xpath, "//*[@id='config-single-com.spigit.config.DisplayConfig.showUserStats']"
  element :showuserattributes, :xpath, "//*[@id='config-single-com.spigit.config.DisplayConfig.showUserAttributes']"
  element :showusernickname, :xpath, "//*[@id='config-single-com.spigit.config.DisplayConfig.showUserNickNameForFirstName']"
  element :shownotificationpreferences, :xpath, "//*[@id='config-single-com.spigit.config.DisplayConfig.enableEmailNotificationPreferences']"
  element :enableyammerlogin, :xpath, "//*[@id='config-single-com.spigit.config.DisplayConfig.enableYammerLogin']"
  element :userexperiencesubmit_button, :xpath, "//*[@id='configTbl']/tbody/tr[39]/td[2]/div/a[1]/span"
  element :userexperiencerestore_button, :xpath, "//*[@id='configTbl']/tbody/tr[39]/td[2]/div/a[2]/span"

  ###Idea Management variables
  element :ideamanagement_link, :xpath, "//*[@id='contents']/div/div[2]/table/tbody/tr[6]/td/div[5]/a"
  element :hidesummaryfield, :xpath, "//*[@id='config-single-com.spigit.idea.IdeaConfig.hideIdeaSummaryField']"
  element :tradewindow, :xpath, "//*[@id='config-single-com.spigit.idea.IdeaConfig.tradeSeparationWindowHours']"
  element :buildteamvalstage, :xpath, "//*[@id='config-single-com.spigit.idea.IdeaConfig.restrictTeamBuildingToOperation']"
  element :ideasmultipleversions, :xpath, "//*[@id='config-single-com.spigit.idea.IdeaConfig.versionHistoryDefault']"
  element :ownercandelete, :xpath, "//*[@id='config-single-com.spigit.idea.IdeaConfig.ownersCanDelete']"
  element :expertcandelete, :xpath, "//*[@id='config-single-com.spigit.idea.IdeaConfig.expertsCanDelete']"
  element :enablesocialsharing, :xpath, "//*[@id='config-single-com.spigit.idea.IdeaConfig.showBookmark']"
  element :showapprovalrating, :xpath, "//*[@id='config-single-com.spigit.idea.IdeaConfig.showApprovalRating']"
  element :showidealifecycle, :xpath, "//*[@id='config-single-com.spigit.idea.IdeaConfig.showIdeaLifeCycleStage']"
  element :showpermalink, :xpath, "//*[@id='config-single-com.spigit.idea.IdeaConfig.showPermalink']"
  element :showsimilarcontent, :xpath, "//*[@id='config-single-com.spigit.idea.IdeaConfig.showSimilarDocs']"
  element :teammemberrecruit, :xpath, "//*[@id='config-single-com.spigit.idea.IdeaConfig.teamMemberCanRecruit']"
  element :administratorrecruit, :xpath, "//*[@id='config-single-com.spigit.idea.IdeaConfig.adminsCanRecruit']"
  element :teammemberdelete, :xpath, "//*[@id='config-single-com.spigit.idea.IdeaConfig.ideaOwnerCanDeleteTeamMember']"
  element :showemptyideatemplate, :xpath, "//*[@id='config-single-com.spigit.idea.IdeaConfig.showEmptyFieldsOnIdeaHome']"
  element :truncatedidealength, :xpath, "//*[@id='config-single-com.spigit.idea.IdeaConfig.truncatedIdeaLength']"
  element :keephtmlformatting, :xpath, "//*[@id='config-single-com.spigit.idea.IdeaConfig.keepHtmlFormatting']"
  element :ideaexpirydueperiod, :xpath, "//*[@id='config-single-com.spigit.idea.IdeaConfig.ideaExpirationDuePeriod']"
  element :ideaexpirynote, :xpath, "//*[@id='config-single-com.spigit.idea.IdeaConfig.ideaExpiryNote']"
  element :ideasubmitmessage, :xpath, ".//*[@id='config-single-com.spigit.idea.IdeaConfig.preSubmitIdeaMessage']"
  element :ideasummarylength, :xpath, "//*[@id='config-single-com.spigit.idea.IdeaConfig.ideaSummaryLength']"
  element :showsimilarideasagg, :xpath, "//*[@id='config-single-com.spigit.idea.IdeaConfig.showSimilarIdeasFromAggregateSites']"
  element :enableideajobs, :xpath, "//*[@id='config-single-com.spigit.idea.IdeaConfig.ideajobEnabled']"
  element :rolesideacoordinator, :xpath, "//*[@id='config-single-com.spigit.idea.IdeaConfig.rolesAllowedToAssignIdeaCoordinator']"
  element :showideacoordinator, :xpath, "//*[@id='config-single-com.spigit.idea.IdeaConfig.enableIdeaCoordinatorWidget']"
  element :ideamanagementsubmit_button, :xpath, "//*[@id='configTbl']/tbody/tr[47]/td[2]/div/a[1]/span"
  element :ideamanagementrestore_button, :xpath, "//*[@id='configTbl']/tbody/tr[47]/td[2]/div/a[2]/span"
  element :addstage_button, :xpath, "//*[@id='configTbl']/tbody/tr[1]/td[2]/a/span"
  #element :addexpiryduration_button, :xpath, "//*[@id='add-array-element-config-single-com.spigit.idea.IdeaConfig.ideaExpirationDuration']/span"

  ###Security Page variables
  #element :admin_tab, :xpath, ".//li/a[@href='/Page/Administration']"
  element :security_link, :xpath, ".//div/a[contains(text(), 'Security')]"
  element :forcehttpposts_checkbox, :xpath, ".//input[@id='config-single-com.spigit.config.SpigitConfig.forcePostForActions']"
  element :disableexternalredirects_checkbox, :xpath, ".//input[@id='config-single-com.spigit.config.SpigitConfig.disableExternalRedirects']"
  element :separatemail_checkbox, :xpath, ".//input[@id='config-single-com.spigit.config.SpigitConfig.separteMailForPasswordUsername']"
  element :allowloginattempts_textfield, :xpath, ".//*[@id='config-single-com.spigit.user.UserConfig.loginLockAttempts']"
  element :accountlockedduration_textfield, :xpath, ".//*[@id='config-single-com.spigit.user.UserConfig.loginLockPeriodInMin']"
  element :resetloginlock_checkbox, :xpath, ".//*[@id='config-single-com.spigit.user.UserConfig.loginLockResetWithPassword']"
  element :lockoutmessage_textfield, :xpath, ".//*[@id='config-single-com.spigit.user.UserConfig.lockoutTooManyAttemptsMsg']"
  element :passwordexpired_checkbox, :xpath, ".//*[@id='config-single-com.spigit.user.UserConfig.passwordPolicyExpiresOnFirstLogin']"
  element :passwordexpirationfrequency_textfield, :xpath, ".//*[@id='config-single-com.spigit.user.UserConfig.passwordPolicyExpirationFrequency']"
  element :addauthenticatorclass_button, :xpath, ".//*[@id='add-array-element-config-single-com.spigit.user.UserConfig.userAuthenticatorClasses']"
  element :addipaddress_button, :xpath, ".//a[@id='add-array-element-config-single-com.spigit.user.UserConfig.restrictedIPAccessForAdmin']"
  element :userswhitelist_textarea, :xpath, ".//textarea[@id='config-single-com.spigit.user.UserConfig.usersWhiteList']"
  element :domainswhitelist_textarea, :xpath, ".//textarea[@id='config-single-com.spigit.user.UserConfig.embeddedUrlDomainWhiteList']"
  element :disableembeddedurl_checkbox, :xpath, ".//*[@id='config-single-com.spigit.user.UserConfig.disableEmbeddedUrl']"
  element :rolestoincludelinks_selector, :xpath, ".//select[@id='config-single-com.spigit.user.UserConfig.embeddedUrlUserWhiteList']"
  element :submitsecuritysettings_button, :xpath, ".//table[@id='configTbl']/descendant::span[text()='Submit']"
  element :restoredefaultsecuritysettings_button, :xpath, ".//table[@id='configTbl']/descendant::span[text()='Restore Defaults']"
  element :settingsappliedmessage_popup, :xpath, ".//div[@id='themeContainer']/div[text()='All settings applied. ' AND @style='display: block;']"
  def click_specific_link(link)
    case link
      when "Activity" then
        activity_link.click
      when "Post Idea" then
        postidea_link.click
      when "View Ideas" then
        viewideas_link.click
      when "Leaderboard" then
        leaderboard_link.click
      when "Store" then
        store_link.click
      when "Dashboard" then
        dashboard_link.click
      when "Administration" then
        administration_link.click
      when "Challenges" then
        challenge_link.click
      when "SpigitLogo" then
        logo_link.click
      when "Users" then
        users_link.click
      when "User Experience Management" then
        userexperience_link.click
      when "Idea Management" then
        ideamanagement_link.click
      when "New Challenge" then
        new_challenge_link.click
      when "Forgot your user name?" then
        reset_user_link.click
      when "Forgot your password?" then
        reset_password_link.click
      when "Sign-Out" then
        signout_link.click
      when "Security" then
        security_link.click
      when "Site Themes and Access Settings" then
        sitethemesandaccesssettings_link.click
      else
        puts "'#{link}' link doesn't exist."
    end
    sleep 3
  end

  def fill_value(field, value)
    case field
      when 'Username'
        @mainpage = MainPage.new
        @mainpage.username value
      when 'Password'
        @mainpage = MainPage.new
        @mainpage.password value

      ###Users fields###
      when "new Username" then
        username_field.set value
      when "new Password" then
        password_field.set value
      when "Re-type Password" then
        repassword_field.set value
      when "First Name" then
        firstname_field.set value
      when "Last Name" then
        lastname_field.set value
      when "Email" then
        email_field.set value

      ###User Experience Management fields###
      when "User Registration Questions" then
        registrationquestions.set value
      when "Number of Users Online" then
        nousersonline.set value
      when "Uploads Limit (Members)" then
        uploadslimitmember.set value
      when "Uploads Limit (Administrator)" then
        uploadslimitadmin.set value
      when "Number of Ideas in Open Challenge" then
        noideasopenchallenge.set value

      ###Idea Management fields###
      when "Trade Window" then
        tradewindow.set value
      when "Truncated Idea Content Length" then
        truncatedidealength.set value
      when "Idea Expiry Due Period" then
        ideaexpirydueperiod.set value
      when "Idea Expiry Note" then
        ideaexpirynote.set value
      when "Idea Submit Confirmation Message" then
        ideasubmitmessage.set value
      when "Idea Summary Length" then
        ideasummarylength.set value

      when "Challenge Title" then
        challenge_title.set value
      when "Challenge Description" then
        challenge_description.set value
      when "Forgot Password" then
        username_reset.set value

      ###Security Page fields###
      when "Allow Login Attempts" then
        allowloginattempts_textfield.set value
      when "Account Locked Duration" then
        accountlockedduration_textfield.set value
      when "Lock Out Message" then
        lockoutmessage_textfield.set value
      when "Password Expiration Frequency" then
        passwordexpirationfrequency_textfield.set value

      else
        puts "'#{field}' field doesn't exist."
    end
    sleep 3
  end

  def clickButton(button)
    case button
      ###Users buttons###
      when "Add User" then
        adduser_button.click
      when "Submit" then
        submit_button.click

      ###User Experience Management buttons###
      when "User Experience Management Submit" then
        userexperiencesubmit_button.click
      when "User Experience Management Restore" then
        userexperiencerestore_button.click

      ###Idea Management buttons###
      when "Idea Management Submit" then
        ideamanagementsubmit_button.click
      when "Idea Management Restore Defaults" then
        ideamanagementrestore_button.click
      when "Idea Management Add New" then
        addstage_button.click

      when "Sign In" then
        signin_button.click
      when "Submit Forgot Username" then
        submit_forgotuser_button.click

      ###Security Page buttons###
      when "Submit Security Settings" then
        submitsecuritysettings_button.click
      when "Restore Default Security Settings" then
        restoredefaultsecuritysettings_button.click

      else
        puts "'#{button}' button doesn't exist."
    end
    sleep 5
  end

  def setCheckbox(field, value)
    case field
      ###Users feilds###
      when "Send Email" then
        sendemail_checkbox.set value
      ###Sign In ###
      when "Remember Username" then
        rememberusername_checkbox.set(value)
        sleep 16

      ###User Experience Management fields###
      when "Full Name Required" then
        fullnamerequired.set value
      when "Can the user register with a different email address than the one the invite was sent to" then
        differentemailinvite.set value
      when "Show User Profile of Non-Member" then
        shownonmemberprofile.set value
      when "Show User email address" then
        showuseremail.set value
      when "Display User Signatures" then
        displayusersignature.set value
      when "Show User Net Worth" then
        showusernetworth.set value
      when "Show Full Names of Users Instead of Username" then
        showuserfullname.set value
      when "Show Privacy Preferences" then
        showprivacypreferences.set value
      when "Show Upload Avatar" then
        showuploadavatar.set value
      when "Show Biography" then
        showbiography.set value
      when "Show User Stats" then
        showuserstats.set value
      when "Show User Attributes On Profile" then
        showuserattributes.set value
      when "Show User Nick Name For First Name" then
        showusernickname.set value
      when "Enable Yammer Login" then
        enableyammerlogin.set value

      ###Idea Management fields###
      when "Hide Summary Field" then
        hidesummaryfield.set value
      when "Build Team in Validation Stage Only" then
        buildteamvalstage.set value
      when "Ideas Can Have Multiple Versions" then
        ideasmultipleversions.set value
      when "Owner Can Delete Idea" then
        ownercandelete.set value
      when "Experts Can Delete Ideas" then
        expertcandelete.set value
      when "Enable Social Media Sharing" then
        enablesocialsharing.set value
      when "Show Approval Rating" then
        showapprovalrating.set value
      when "Show Idea Life Cycle Stage" then
        showidealifecycle.set value
      when "Show Permalink" then
        showpermalink.set value
      when "Show Similar Content" then
        showsimilarcontent.set value
      when "Team Members Recruit" then
        teammemberrecruit.set value
      when "Administrators Recruit" then
        administratorrecruit.set value
      when "Allow Team Member Delete" then
        teammemberdelete.set value
      when "Show Empty Idea Template Fields on View Idea Page" then
        showemptyideatemplate.set value
      when "Keep HTML formatting in the Truncated Idea Content" then
        keephtmlformatting.set value
      when "Show Similar Ideas From Aggregate Sites" then
        showsimilarideasagg.set value
      when "Enable Idea Jobs" then
        enableideajobs.set value
      when "Show Idea Coordinator Widget" then
        showideacoordinator.set value

      ###Security page fields###
      when "Force HTTP Posts" then
        forcehttpposts_checkbox.set value
      when "Disable External Redirects" then
        disableexternalredirects_checkbox.set value
      when "Separate Mail for Username and Password on Add User" then
        separatemail_checkbox.set value
      when "Reset Login Lock with Password" then
        resetloginlock_checkbox.set value
      when "Password Expired on First Sign-In" then
        passwordexpired_checkbox.set value
      when "Disable Embedded URL" then
        disableembeddedurl_checkbox.set value
      else
        puts "'#{field}' checkbox doesn't exist."
    end
    sleep 2
  end

  def select_an_option(field, value)
    case
      when field == 'Reputation Policy'
        select(value, :from => @@reputationoption_combobox)
      when field == 'Start Time'
        select(value, :from => @@reputationoption_combobox)
      else
        puts "Don't exists this option."
    end
    sleep(5)
  end

  def verifyElementExists(element)
    case element
      when "User has been created" then
        if has_no_usercreated_text?
          fail(ArgumentError.new('NO USER WAS CREATED!'))
        end
      when "The username or password you entered is incorrect."
        if has_no_incorrectusernamepassword_text?
          fail(ArgumentError.new('NO USERNAME/PASSWORD VALIDATION MESSAGE IS DISPLAYED!'))
        end
    end
  end

  ######### Special methods ########
  def username (username)
    username_field_login.set username
  end

  def password (userpassword)
    password_field_login.set userpassword
  end

  ###Method to put content in a TinyMCE
  def fillInTinyMCE(tinymce, content)
    iframe = case tinymce
               ###User Experience Management fields###
               when "User Profile Page Template" then
                 "config-single-com.spigit.user.UserConfig.userProfileTemplate_ifr"
               when "User Idea Home Template" then
                 "config-single-com.spigit.user.UserConfig.userTemplateIdeaHome_ifr"
               when "Access Denied Message" then
                 "config-single-com.spigit.user.UserConfig.accessDeniedMessage_ifr"

               ###Idea Management fields###
               when "Shown Idea Template" then
                 "config-single-com.spigit.idea.IdeaConfig.viewIdeaTemplate_ifr"
               when "Shown Idea Short Description Template" then
                 "config-single-com.spigit.idea.IdeaConfig.viewIdeaShortDescTemplate_ifr"
               when "Shown Idea Summary Template" then
                 "config-single-com.spigit.idea.IdeaConfig.ideaSummaryTemplate_ifr"
               else "'#{tinymce}' text area doesn't exist."
             end
    within_frame(iframe) do
      editor = page.find_by_id('tinymce')
      editor.native.clear
      editor.native.send_keys(content)
    end
    sleep 3
  end

  def clearTinyMCE(tinymce)
    iframe = case tinymce
               ###User Experience Management fields###
               when "User Profile Page Template" then
                 "config-single-com.spigit.user.UserConfig.userProfileTemplate_ifr"
               when "User Idea Home Template" then
                 "config-single-com.spigit.user.UserConfig.userTemplateIdeaHome_ifr"
               when "Access Denied Message" then
                 "config-single-com.spigit.user.UserConfig.accessDeniedMessage_ifr"

               ###Idea Management fields###
               when "Shown Idea Template" then
                 "config-single-com.spigit.idea.IdeaConfig.viewIdeaTemplate_ifr"
               when "Shown Idea Short Description Template" then
                 "config-single-com.spigit.idea.IdeaConfig.viewIdeaShortDescTemplate_ifr"
               when "Shown Idea Summary Template" then
                 "config-single-com.spigit.idea.IdeaConfig.ideaSummaryTemplate_ifr"
               else "'#{tinymce}' text area doesn't exist."
             end
    within_frame(iframe) do
      editor = page.find_by_id('tinymce')
      editor.native.clear
    end
    sleep 3
  end

  ###Method to select an option by its name
  def selectOptionByName(list, option_name)
    case list
      when "Roles Allowed to Assign and Remove Idea Coordinator" then
        rolesideacoordinator.find("option", :text => /\A#{option_name}\Z/).select_option

      ###Security Page options###
      when "Users Who Can Include Links" then
        rolestoincludelinks_selector.find("option", :text => /\A#{option_name}\Z/).select_option

      else
        "'#{list}' list doesn't exist."
    end
    sleep 2
  end

  ###Add lines to TextArea by Christian###
  def addLineToTextArea(field, value)
    case field
      when "Users White List" then
        manageTextAreaToAddLine(userswhitelist_textarea, value)

      when "Domains White List" then
        manageTextAreaToAddLine(domainswhitelist_textarea, value)

      else
        "'#{textarea_field}' textarea doesn't exist."
    end
    sleep(3)
  end

  def manageTextAreaToAddLine(textarea_element, linetoadd)
    currentlines = textarea_element.text
    if currentlines != ""
      currentlines += "\r"
    end
    currentlines += linetoadd
    textarea_element.set(currentlines)
  end

  ###Remove specific line from TextArea by Christian###
  def removeLineFromTextArea(field, value)
    case field
      when "Users White List" then
        manageTextAreaToRemoveLine(userswhitelist_textarea, value)

      when "Domains White List" then
        manageTextAreaToRemoveLine(domainswhitelist_textarea, value)

      else
        "'#{field}' textarea doesn't exist."
    end
    sleep(3)
  end

  def manageTextAreaToRemoveLine(textarea_element, linetoremove)
    currentlines = textarea_element.text
    newlines = ""
    linesarray = currentlines.lines("\r").to_a
    linesarray.delete(linetoremove)
    linesarray.each do |line|
      newlines += (line + "\r")
    end
    textarea_element.set(newlines)
  end

  ###Add a User Authenticator Class###
  def addUserAuthenticatorClass(classname)
    addauthenticatorclass_button.click
    authenticatorclassesarray = all(:xpath, ".//input[contains(@id,'com.spigit.user.UserConfig.userAuthenticatorClasses')]")
    authenticatorclassesarray[-1].set(classname)
    sleep(5)
  end

  ###remove a User Authenticator Class###
  def removeUserAuthenticatorClass(classname)
    addauthenticatorclass_button.native.send_keys(:f5)
    find(:xpath, ".//td[input[@value='" + classname + "']]/img").click
  end

  ###Add an IP Address for Administrator Access###
  def addIPAddressAdminAccess(ipaddress)
    addipaddress_button.click
    ipaddressesarray = all(:xpath, ".//input[contains(@id,'com.spigit.user.UserConfig.restrictedIPAccessForAdmin')]")
    ipaddressesarray[-1].set(ipaddress)
  end

  ###Remove an IP Address from Administrator Access list###
  def removeIPAddressAdminAccess(ipaddress)
    addipaddress_button.native.send_keys(:f5)
    find(:xpath, ".//td[input[@value='" + ipaddress + "']]/img").click
  end

  ###Idea Management: Method to fill in the information of a new stage
  def fillInNewStage(name, desc)
    i = page.all(:xpath, "//*[@id='array-insert-config-single-com.spigit.idea.IdeaConfig.lifecycleStages']/tbody/tr").count
    find(:xpath, "//*[@id='config-array-#{i-2}-com.spigit.idea.IdeaConfig.lifecycleStages']").set name
    find(:xpath, "//*[@id='config-array-#{i-2}-com.spigit.idea.IdeaConfig.lifecycleStageDescriptions']").set desc
    sleep 3
  end

  ###Idea Management: Method to remove an stage
  def removeStage(name)
    find(:xpath, "//*[@id='array-insert-config-single-com.spigit.idea.IdeaConfig.lifecycleStages']/tbody/tr/td[input[@value='#{name}']]/img").click
  end

  ###Idea Management: Method to edit an existing stage
  def editStage(nostage, name, desc)
    find(:xpath, "//*[@id='config-array-#{nostage.to_i-1}-com.spigit.idea.IdeaConfig.lifecycleStages']").set name
    find(:xpath, "//*[@id='config-array-#{nostage.to_i-1}-com.spigit.idea.IdeaConfig.lifecycleStageDescriptions']").set desc
    sleep 3
  end

  def verifyusername(field, value)
    $result = has_field?(field, :with => value)
    puts $result
    return $result
  end

end