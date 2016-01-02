
#############################################################
#                      PREREQUISITES                        #
#############################################################
  Given /^I am on home page$/ do
    HomePage.open
  end
####################################
#              ACTIONS             #
####################################

  When /^I click sign up button on home page$/ do
    HomePage.given.open_sign_up_page
  end
####################################
#              CHECKS              #
####################################
  Then /^I should be redirected to sign up page$/ do
    SignUpPage.given
  end
