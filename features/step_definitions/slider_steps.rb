Then('Verify navigate to the QAV BOX signin form') do
  $driver.visitlink
end

Then('Verify click on the Home Button') do
  $driver.click_OnHomeButton
end

Then('Verify click on the Drag And Drop') do
  $driver.click_OnDragAndDrop
end

Then('Verify the drag and drop is worked') do
  $driver.verify_DragAndDrop
end

Then('I set the slider to {int}') do |value|
  slider = $driver.input(:type => 'range')
  slider_width = slider.width
  handle = slider.span(:id => 'range')
  target_position = (slider_width * value / 100) - (handle.width / 2)
  handle.drag_by(target_position, 0)
end
