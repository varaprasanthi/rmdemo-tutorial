$driver = QavHomePage.new()

Given('Verify navigate to QAV BOX page') do
  $driver.visitHomePage_link
  sleep(1)
end



Then('Verify home button is enabled') do
  $driver.VerifyHomeButtonEnabled()
  sleep(1)
end


Then('Validate home text is displayed') do
  $driver.validateHomeTextDisplayed
  sleep(1)
end

Then('Verify enter the user name') do
  $driver.enter_UserName
  sleep(1)
end

Then('Validate email') do
  $driver.validate_EmailText
  sleep(1)
end

Then('Verify enter email') do
  $driver.enter_Email
  sleep(1)
end

Then('Verify enter mobile number') do
  $driver.enter_PhoneNumber
  sleep(1)
end

Then("the text box should be disabled") do
  $driver.verify_DisabledTextBox
end
# ===== File upload ==========
When("I select a file to upload") do
  $driver.verify_UploadFile
end

Then('Verify click dropdown') do
  $driver.Select_FemaleFromDropdown
  sleep(1)
end

Then('Verify click radio button') do
  $driver.select_RadioButton
  sleep(1)
end

Then('Verify click check box') do
  $driver.select_ChickBox
  sleep(1)
end

Then('Verify click the automation tool') do
  $driver.clickOn_AutomationTool
  sleep(1)
end

#=========== Switching windows ===============

Then('Verify click on link tutorial') do
  $driver.clickOn_Tutorial
  sleep(1)
  $driver.close_second_browser if $browser.windows.count > 1
end

# =========== drag and drop ===========

Then('Verify navigate to QAV BOX signin form') do
  $driver.visitHomePage_link
end

Then('Verify click on Home Button') do
  $driver.click_OnHomeButton
end

Then('Verify click on Drag And Drop') do
  $driver.click_OnDragAndDrop
end

Then('Verify drag and drop is worked') do
  $driver.verify_DragAndDrop
end

# ========== Alerts ===========

Given('Verify navigate to alert page of qav box') do
  $driver.visit_AlertPageLink
end

Then('Verify click on submit') do
  $driver.clickOn_AlertSubmit
end

# ======= prompt alert =======

Then('I enter string in the prompt dialogue') do
  $driver.clickOn_PromptAlert
end


# ====== confirm alert ========

Then('Verify click on confirm alert') do
  $driver.clickOn_ConfirmAlert
end

Then('verify click on cancel button on confirm alert box') do
  $driver.clickOn_ConfirmCancel
end


# ======= Resizable ======

Given('Verify navigate resizable link page') do
  $driver.visit_Resizable_link
  sleep(1)
end

When("I resize the element with ID {string} to width {int} and height {int}") do |ta1, width, height|
  $driver.verify_Resizable(ta1,width,height)
end