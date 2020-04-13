Feature: BDD-1 Verify Login/Logout functionality

  As a user of an application
  I want to filter Search result with checkbox filter


  @smoke
  Scenario: 1 - Unauthorized user
    When User open the Main page
    And Select the <category>
    And Select the <subcategory>
    And Change <checkbox filter state>
    Then Search results are filtered
    Examples:
      |Category|Subcategory|Checbox filter state|
      |Здоровье|Антисептики|Checked             |
      |Зоотовары|Ошейники|Unchecked             |
      |Все для дома|Мебель|
      |Детские товары|Детские автомобили|

  @smoke
  Scenario: 2 - Authorized  user
    Given Authorized  user
    When User open the Main page
    And Select the <category>
    And Select the <subcategory>
    And Change <checkbox filter state>
    Then Search results are filtered
    Examples:
      |Category|Subcategory|Checbox filter state|
      |Здоровье|Антисептики|Checked             |
      |Зоотовары|Ошейники|Unchecked             |
      |Все для дома|Мебель|
      |Детские товары|Детские автомобили|



