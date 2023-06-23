Feature: Verify the Swag Lab Login page

  Scenario Outline: : Verify user is able to login or not

    Given Iam on Swag Lab Login page
    When Enter the username "<username>"
    When Enter the password "<password>"
    Then click on Login button

    Examples:
      |username| |password|
      |standard_user | |secret_sauce|
      |locked_out_user | |secret_sauce|
      |problem_user | |secret_sauce|
      |performance_glitch_user| |secret_sauce|