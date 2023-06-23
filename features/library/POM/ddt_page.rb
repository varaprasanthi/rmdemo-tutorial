class SwagLab_Login

  def usernameValue(username)
    $browser.text_field(:id => "user-name").set username
    sleep(1)
  end
  def passwordValue(password)
    $browser.text_field(:id => "password").set password
    sleep(1)
  end
  def loginButton
    $browser.button(:id => "login-button").click
    sleep(1)

  end

end