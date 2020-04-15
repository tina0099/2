Feature: BDD-1 Verify Login/Logout functionality

  As a user of an application
  I want to switch between pagess


  @smoke
  Scenario: 1 - Unauthorized user
    When User open the Main page
    And Select the <category>
    And Select the <subcategory>
    And Click on the page number
    Then Page number is opened
    Examples:
      |Category|Subcategory|
      |Health|Sanitizer|
      |Home|Furniture|
      |Child products|Child car|





