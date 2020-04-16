Feature: BDD-7 filtering dropdown

  As a user of an application
  I want to filter Search result with filter dropdown
  To be sure that all filters were applied to the search results


  @smoke
  Scenario: 1 - Unauthorized user
    When User open the Main page
    And Select the <category>
    And Select the <subcategory>
    And Change filter-block filter-dropdown state to active
    And Click on Filter item
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
    And Change filter-block filter-dropdown state to active
    And Click on Filter item
    Then Search results are filtered
    Examples:
      |Category|Subcategory|
      |Health|Sanitizer|
      |Home|Furniture|
      |Child products|Child car|



