Feature: BDD-3 Checkbox filtering

  As a user of an application
  I want to filter Search result with checkbox filter
  For finding products in my/not my country

  @smoke
  Scenario: 1 - Unauthorized user
    When User open the Main page
    And Select the <category>
    And Select the <subcategory>
    And Change <checkbox filter state>
    Then Search results are filtered
    Examples:
      |Category|Subcategory|Checkbox filter state|
      |Health|Sanitizer|Checked|
      |Home|Furniture|Unchecked|
      |Child products|Child car|

  @smoke
  Scenario: 2 - Authorized  user
    Given Authorized read user login
    When User open the Main page
    And Select the <category>
    And Select the <subcategory>
    And Change <checkbox filter state>
    Then Search results are filtered
    Examples:
      |Category|Subcategory|Checkbox filter state|
      |Health|Sanitizer|Checked|
      |Home|Furniture|Unchecked|
      |Child products|Child car|



