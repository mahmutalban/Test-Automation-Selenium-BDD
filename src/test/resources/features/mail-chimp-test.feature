@MailChimpTests
Feature: Test MailChimp Website Signup Process
  In order to verify the signp MailChimp Signup page works fine
  We want to input *email*, *userName* and *Password* with different set of data


  @VerifyThatSignupPageWorksWithValidData
  Scenario: To Verify that signup processes successfully with valid data
    Given Open the Chrome Browser
    And Start Application
    When I enter email as "test@mail.com"
    And I enter userName as "test@mail.com"
    And I enter password as "Pass@123#"
    Then Verify that signup process is "SUCCESS"

  @VerifyThatSignupPageWorksWithUserNameHavingMoreThan100Characters
  Scenario: To Verify that signup processes successfully with valid data
    Given Open the Chrome Browser
    And Start Application
    When I enter email as "test@mail.com"
    And I enter userName as "testttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttt@mail.com"
    And I enter password as "Pass@123#"
    Then Verify that signup process is "MAX_CHARACTERS_EXCEED"


  @VerifyThatSignupPageThrowsErrorIfUserNameAlreadyOccupied
  Scenario: To Verify that signup processes successfully with valid data
    Given Open the Chrome Browser
    And Start Application
    When I enter email as "test1@mail.com"
    And I enter userName as "test1@mail.com"
    And I enter password as "Pass@123#"
    Then Verify that signup process is "USER_ALREADY_EXIST"


  @VerifyThatSignupPageThrowsErrorIfEmailIsMissing
  Scenario: To Verify that signup processes successfully with valid data
    Given Open the Chrome Browser
    And Start Application
    When I enter userName as "test@mail.com"
    And I enter password as "Pass@123#"
    Then Verify that signup process is "MISSING_EMAIL"