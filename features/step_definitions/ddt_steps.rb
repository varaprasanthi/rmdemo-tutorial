Given('Iam on Swag Lab Login page') do
  $browser.goto"https://www.saucedemo.com/"
  puts "Swag Lab Login page launch successfully"
  @user = SwagLab_Login.new

end
When('Enter the username {string}') do |username|
  @user.usernameValue(username)
end

When('Enter the password {string}') do |password|
  @user.passwordValue(password)
end

Then('click on Login button') do
  @user.loginButton
end