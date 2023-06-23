class QavHomePage

  def visitHomePage_link
    $browser.goto("https://qavbox.github.io/demo/signup/")
  end

  def VerifyHomeButtonEnabled()
    $browser.button(:name => 'home').enabled? .should be true
  end

  def validateHomeTextDisplayed
    one = $browser.button(:name => 'home').text
    $one = one
    puts($one)
    expect($one).to eql('Home')
  end

  def enter_UserName
    $browser.text_field(:id => 'username').set('M@123')
  end


  def validate_EmailText
    one = $browser.find_element(:xpath, "//label[normalize-space()='Email']").text
    $one = one
    puts($one)
    expect($one).to eql('Email')
  end

  def enter_Email
    $browser.text_field(:id => 'email').set('test123@gmail.com')
  end

  def enter_PhoneNumber
    $browser.text_field(:id => 'tel').send_keys('9696969696')
  end

  def verify_DisabledTextBox
    sleep(1)
    text_box = $browser.input(id: 'fax')
    expect(text_box.disabled?).to be true
  end

  def verify_UploadFile
    sleep(2)
    file_path = File.expand_path('C:\Users\vyeduvaka\Desktop\RubyMineBackup.txt')
    $browser.input(name: 'datafile').set(file_path)
    sleep(1)
  end

  def Select_FemaleFromDropdown
    dp=$browser.select_list name: 'sgender'
    dp.exists?
    dp.select 'female'
    dp.selected_options
    sleep(1.5)
  end

  def select_RadioButton
    $browser.radio(:name => 'experience').wait_until(&:present?)
    $browser.radio(:name => 'experience').click
  end

  def select_ChickBox
    $browser.checkbox(:xpath => "//*[@id='ip'][3]").wait_until(&:present?)
    $browser.checkbox(:xpath => "//*[@id='ip'][3]").click
    sleep(1)
  end


  def clickOn_AutomationTool
    dp=$browser.select_list id: 'tools'
    dp.exists?
    dp.select 'Protractor'
    dp.selected_options
    sleep(1.5)
    # $browser.windows.last.use
  end

  def close_second_browser
    windows_to_close = $browser.windows.drop(1)
    windows_to_close.each(&:close)
    sleep(2)
    $browser.back
    $browser.refresh
    # $browser.forward
    sleep(2)
  end

  def clickOn_Tutorial
    $browser.link(:href => 'http://www.qavalidation.com').click
  end

  def click_OnHomeButton
    $browser.button(:name => 'home').click
  end

  def click_OnDragAndDrop
    $browser.goto 'https://qavbox.github.io/demo/dragndrop'
  end

  def verify_DragAndDrop
    source_Place = $browser.div(:id => 'draggable')
    destination_Place = $browser.div(:id => 'droppable')
    sleep(2)
    source_Place.drag_and_drop_on destination_Place
    sleep(3)
  end

  def verify_Slider
    source_Place = $browser.div(:id => 'draggable')
    destination_Place = $browser.div(:id => 'droppable')
    source_Place.drag_and_drop_on destination_Place
    sleep(3)
  end

  def visit_AlertPageLink
    $browser.goto 'https://qavbox.github.io/demo/alerts/'
  end

  def clickOn_AlertSubmit
    $browser.input(:value => "Submit").click
    sleep(4)
    $browser.alert.ok
  end

  def clickOn_PromptAlert
    $browser.input(:value => "PromptMe").click
    $browser.alert.set("hello")
    sleep(1)
    $browser.alert.ok
  end

  def visit_Resizable_link
    $browser.goto 'https://omayo.blogspot.com/search?q='
  end

  def verify_Resizable(ta1,width,height)
    $browser.execute_script("window.scrollBy(0, window.innerHeight);")
    element = $browser.textarea(:id => ta1)
    sleep(2)
    $browser.execute_script("arguments[0].style.width = '#{width}px'; arguments[0].style.height = '#{height}px';", element)
    sleep(4)
  end

  def clickOn_ConfirmAlert
    $browser.input(:id => "confirm").click
    getConfirm_Text = $browser.alert.text
    puts getConfirm_Text
  end

  def clickOn_ConfirmCancel
    $browser.alert.cancel
  end


end
