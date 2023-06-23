Feature: Verify Test Login page

  Scenario: Verify Test LogIn page successfully with valid credentials
    Given Verify navigate to test login page
    #Then Verify username text is displayed
    Then Verify can able to enter username
    #Then Verify password text is displayed
    Then Verify can able to enter password
    When Verify click on submit button
    #Then Verify successfully login text is displayed
    When Verify click on logout
    Then Verify test login is displayed