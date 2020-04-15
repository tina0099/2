Feature: BDD-1 Verify Login/Logout functionality

  As a user of an application
  I want to filter Search result by pricee


  @smoke
  Scenario: 1 - Unauthorized user
    When User open the Main page
    And Select the <category>
    And Select the <subcategory>
    And Fill in <From price>
    And Fill in <To price>
    And Click on OK button
    Then Search results are filtered
    Examples:
      |Category|Subcategory|
      |Health|Sanitizer|
      |Home|Furniture|
      |Child products|Child car|

  @smoke
  Scenario: 2 - Authorized  user
    Given Authorized read user login
    When User open the Main page
    And Select the <category>
    And Select the <subcategory>
    And Fill in <From price>
    And Fill in <To price>
    And Click on OK button
    Then Search results are filtered
    Examples:
      |Category|Subcategory|
      |Health|Sanitizer|
      |Home|Furniture|
      |Child products|Child car|


