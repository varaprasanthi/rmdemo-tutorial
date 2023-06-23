When(/^I click on the Next button "([^"]*)" times$/) do |iterations|
  $browser.goto('https://datatables.net/examples/advanced_init/dt_events.html')

  iterations.times do
    button = $browser.text_field(xpath: "//*[@class='paginate_button ']").click
    button.click
  end
end