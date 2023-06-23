Given('Verify navigate to test login page') do
  $browser.navigate.to URI 'https://practicetestautomation.com/practice-test-login/'
  $browser.manage.window.maximize
  sleep(4)
end

Then('Verify username text is displayed') do
  label_text = $browser.find_element(:xpath, "//*[@id='form']/div[1]/label").text
  puts(label_text)
  #expect(label_text).to have_Content()
end

Then('Verify can able to enter username') do
  $browser.find_element(:name, 'username').click
  $browser.find_element(:name, 'username').send_keys('student')
end

Then('Verify password text is displayed') do
  label_text = $browser.find_element(:xpath, "//*[@id='form']/div[2]/label").text
  puts(label_text)
end

Then('Verify can able to enter password') do
  $browser.find_element(:name, 'password').click
  $browser.find_element(:name, 'password').send_keys('Password123')
end

When('Verify click on submit button') do
  $browser.find_element(:id, 'submit').click
end

Then('Verify successfully login text is displayed') do
  label_text = $browser.find_element(:xpath, "//*[@id='loop-container']/div/article/div[1]/h1").text
  puts(label_text)
end

When('Verify click on logout') do
  $browser.find_element(:xpath, "//a[normalize-space()='Log out']").click
end

Then('Verify test login is displayed') do
  label_text = $browser.find_element(:xpath, "//h2[normalize-space()='Test login']").text
  puts(label_text)
end

