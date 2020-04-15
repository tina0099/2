Feature: BDD-1 Verify Login/Logout functionality

  As a user of an application
  I want to check sorting functionalityy

  @smoke
  Scenario Outline: 1 - Unauthorized user
    When User open the Main page
    And Select the <category>
    And Select the <subcategory>
    And Click on <Sort type>
    Then Search Results are sorted
    Examples:
      | Category       | Subcategory | Sort type  |
      | Health         | Sanitizer   | Name       |
      | Home           | Furniture   | Price Low  |
      | Child products | Child car   | Price High |


  @smoke
  Scenario Outline: 2 - Authorized  user
    Given Authorized read user login
    When User open the Main page
    And Select the <category>
    And Select the <subcategory>
    And Click on <Sort type>
    Then Search Results are sorted
    Examples:
      | Category       | Subcategory | Sort type  |
      | Health         | Sanitizer   | Name       |
      | Home           | Furniture   | Price Low  |
      | Child products | Child car   | Price High |