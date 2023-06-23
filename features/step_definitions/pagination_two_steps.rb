Given('I am on the homepage of amazon') do
  $browser.goto('https://www.amazon.in/')
  $browser.window.maximize
end

When('I click on the Search Button') do
  $browser.text_field(:id => 'twotabsearchtextbox').click
end

When('I entered text in the search field') do
  $browser.text_field(:id => 'twotabsearchtextbox').set('smart phone under 10000')
end

When('click on search button') do
  $browser.input(:type => 'submit').click
end

When('click on next button') do
  i = $browser.a(class: "s-pagination-item s-pagination-next s-pagination-button s-pagination-separator")
  for a in 1..9 do
    i.click
    sleep(4)
  end
end