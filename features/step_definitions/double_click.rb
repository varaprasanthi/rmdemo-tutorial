Given('Verify navigate to demoqa buttons page') do
  $browser.goto 'https://demoqa.com/buttons'
end

Then('Verify click on double click') do
  $browser.button(id: "doubleClickBtn").double_click
  sleep(3)
end

Then('Verify after click on double click button some text is displayed or not') do
  doubleClick_Text = $browser.p(id: "doubleClickMessage").text
  puts doubleClick_Text
  successfullyValidated = expect(doubleClick_Text).to eql('You have done a double click')
  if successfullyValidated
    puts "Successfully validated!"
  else
    raise "Validation failed!"
  end

end

