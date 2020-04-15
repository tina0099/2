Feature: BDD-1 Verify Login/Logout functionality

  As a user of an application
  I want to add a product for comparing


  @smoke
  Scenario: 1 - Unauthorized user
    When User open the Main page
    And Select the <category>
    And Select the <subcategory>
    And Click on Add to Compare button
    Then A product is added to the compare list
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
    And Click on Add to Compare button
    Then A product is added to the compare list
    Examples:
      |Category|Subcategoryy|
      |Health|Sanitizer|
      |Home|Furniture|
      |Child products|Child car|


