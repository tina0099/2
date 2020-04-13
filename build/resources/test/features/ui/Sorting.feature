Feature: BDD-1 Verify Login/Logout functionality

  As a user of an application
  I want to check sorting functionality

  @smoke
  Scenario: 1 - Unauthorized user
    When User open the Main page
    And Select the <category>
    And Select the <subcategory>
    And Click on <Sort type>
    Then Search Results are sorted
    Examples:
      |Category|Subcategory|Sort type|
      |Здоровье|Антисептики| Наименование      |
      |Зоотовары|Ошейники| Цена от дешевых    |
      |Все для дома|Мебель| Цена от дорогих|
      |Детские товары|Детские автомобили|Количество предложений|

  @smoke
  Scenario: 2 - Authorized  user
    Given Authorized  user
    When User open the Main page
    And Select the <category>
    And Select the <subcategory>
    And Click on <Sort type>
    Then Search Results are sorted
    Examples:
      |Category|Subcategory|Sort type|
      |Здоровье|Антисептики| Наименование      |
      |Зоотовары|Ошейники| Цена от дешевых    |
      |Все для дома|Мебель| Цена от дорогих|
      |Детские товары|Детские автомобили|Количество предложений|