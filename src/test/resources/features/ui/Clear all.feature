Feature: BDD-4 Clear all feature

  As a user of an application
  I want to clear all selected filters
  For seeing all the results


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
      |Category|Subcategoryy|
      |Health|Sanitizer|
      |Home|Furniture|
      |Child products|Child car|


