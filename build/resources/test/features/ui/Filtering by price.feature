Feature: BDD-1 Verify Login/Logout functionality

  As a user of an application
  I want to filter Search result by price


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
      |Category|Subcategory|From price|To price|
      |Здоровье|Антисептики|  1        |100    |
      |Зоотовары|Ошейники|        101    |1000|
      |Все для дома|Мебель|     0      |1001|
      |Детские товары|Детские автомобили|1001| 0|

  @smoke
  Scenario: 2 - Authorized  user
    Given Authorized  user
    When User open the Main page
    And Select the <category>
    And Select the <subcategory>
    And Fill in <From price>
    And Fill in <To price>
    And Click on OK button
    Then Search results are filtered
    Examples:
      |Category|Subcategory|From price|To price|
      |Здоровье|Антисептики|  1        |100    |
      |Зоотовары|Ошейники|        101    |1000|
      |Все для дома|Мебель|     0      |1001|
      |Детские товары|Детские автомобили|1001| 0|


