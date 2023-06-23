Given(/^I have a CSV file named "([^"]*)"$/) do |arg|

end

When(/^I read the CSV file$/) do
  @data = []
  file_path = 'C:\Users\C45688\Documents\RubyCSV\CSVDemo_Three.csv'

  CSV.foreach(file_path, headers: true) do |row|
    @data << row.to_h
    puts @data
  end
end

Then(/^I should see the following data:$/) do |expected_data_table|
  expected_data = expected_data_table.hashes
  puts expected_data

end
