####################################
#              CHECKS              #
####################################
  Then /^fill in correct credentials in Getting Started section$/ do
    SignUpPage.given.fill_get_start(firstname: 'Test',
                             lastname: 'Kepler',
                             email: settings.def_test_user,
                             rtpemail: settings.def_test_user,
                             month: '3',
                             year: '1989',
                             day: '22')
  end

  Then /^fill in incorrect credentials in Getting Started section$/ do
    SignUpPage.given.fill_get_start(firstname: 'Test',
                              lastname: 'Kepler',
                              email: settings.def_test_user,
                              rtpemail: 'user@maiol.com',
                              month: '3',
                              year: '1989',
                              day: '22')
  end

  And /^I see the alert message 'Please enter the same value again'$/ do
    expect(SignUpPage.given.text).to include('Please enter the same value again')
  end

  And /^click next button$/ do
    SignUpPage.given.click_next('PersonalDetails')
  end
