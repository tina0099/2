Feature: BDD-1 Verify Login/Logout functionality

  As a user of an application
  I want to fclear all selected filters


  @smoke
  Scenario: 1 - Unauthorized user
    When User open the Main page
    And Select the <category>
    And Select the <subcategory>
    And Change filters state
    And Click on Clear All button
    Then All filters are cleared
    Examples:
      |Category|Subcategory|
      |Health|Sanitizer|
      |Home|Furniture|
      |Child products|Child car|

  @smoke
  Scenario: 2 - Authorized  user
    Given Given Authorized read user login
    When User open the Main page
    And Select the <category>
    And Select the <subcategory>
    And Change filters state
    And Click on Clear All button
    Then All filters are cleared
    Examples:
      |Category|Subcategory|
      |Health|Sanitizer|
      |Home|Furniture|
      |Child products|Child car|


