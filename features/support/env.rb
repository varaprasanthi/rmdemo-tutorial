require 'rspec'
require 'watir'
require 'page-object'
require 'page-object/page_factory'
require 'csv'

include RSpec::Matchers

Before do |scenario|
  driver = Watir::Browser.new :chrome
  $browser = driver
end

After do
  # $browser.close
  $browser.quit
end

$report_path = "HTML_Report"
AfterStep do
  sleep 0.5
  file = Tempfile.new(["screenshot_",".png"],$report_path)
  screenshot = file.path
  file.close(true)
  $browser.driver.save_screenshot(screenshot)
  attach "#{screenshot}", "image/png"
end





