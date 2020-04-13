Feature: BDD-1 Verify Login/Logout functionality

  As a user of an application
  I want to filter Search result with filter dropdown


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
      |Здоровье|Антисептики|
      |Зоотовары|Ошейники|
      |Все для дома|Мебель|
      |Детские товары|Детские автомобили|

  @smoke
  Scenario: 2 - Authorized  user
    Given Authorized  user
    When User open the Main page
    And Select the <category>
    And Select the <subcategory>
    And Change filter-block filter-dropdown state to active
    And Click on Filter item
    Then Search results are filtered
    Examples:
      |Category|Subcategory|
      |Здоровье|Антисептики|
      |Зоотовары|Ошейники|
      |Все для дома|Мебель|
      |Детские товары|Детские автомобили|



