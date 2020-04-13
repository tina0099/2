Feature: BDD-1 Verify Login/Logout functionality

  As a user of an application
  I want to see Search Results in the List and Table view

  @smoke
  Scenario: 1
    When User open the Main page
    And Select the <category>
    And Select the <subcategory>
    And Click on <view> icon
    Then Search Results are displayed according to the <view>
    Examples:
      |Category|Subcategory|View|
      |Здоровье|Антисептики|  Table     |
      |Зоотовары|Ошейники| List         |
      |Все для дома|Мебель|
      |Детские товары|Детские автомобили|

