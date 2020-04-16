Feature: BDD-5 comment adding

  As a user of an application
  I want to fill in and sent the form with review



  @smoke
  Scenario: 1 - Unauthorized user
    When User open the Product page
    And Select the review tab
    And Click on the Review button
    And Fill in Review form
    And Click on Save button
    Then Review form is sent to the verification with <anauthorized_user parameter>

  @smoke
  Scenario: 2 - Authorized  user
    Given Authorized read user login
    When User open the Product page
    And Select the review tab
    And Click on the Review button
    And Fill in Review form
    And Click on Save button
    Then Review form is sent to the verification with <authorized_user parameter>





