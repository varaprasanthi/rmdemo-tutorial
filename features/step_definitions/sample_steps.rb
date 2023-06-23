Given('Verify navigated QAV BOX home page') do
  on_page(SamplePage).visit_link
  sleep(1)
end
Then('Verify enter user name') do
  on_page(SamplePage).enterUserName
  sleep(1)
end

Then('Verify enter the email') do
  on_page(QavHomePage).enterEmail
  sleep(1)
end

Then('Verify enter the mobile number') do
  on_page(QavHomePage).enterPhoneNumber
  sleep(1)
end






