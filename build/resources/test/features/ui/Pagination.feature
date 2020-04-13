Feature: BDD-1 Verify Login/Logout functionality

  As a user of an application
  I want to switch between pages


  @smoke
  Scenario: 1 - Unauthorized user
    When User open the Main page
    And Select the <category>
    And Select the <subcategory>
    And Click on the page number
    Then Page number is opened
    Examples:
      |Category|Subcategory|
      |Здоровье|Антисептики|
      |Зоотовары|Ошейники|
      |Все для дома|Мебель|
      |Детские товары|Детские автомобили|




