Feature: BDD-1 Verify Login/Logout functionality

  As a user of an application
  I want to switch between tab on the product page


  @smoke
  Scenario: 1 - Unauthorized user
    When User open the Product page
    And Click on the <tab>
    Then <tab> is loaded

      |tab|
      |Описание и цены|
    | Магазины на карте|
    |Динамика цен|
    |Отзывы|


  @smoke
  Scenario: 2 - Authorized  user
    Given Authorized user
    When User open the Product page
    And Click on the <tab>
    Then <tab> is loaded

      |tab|
      |Описание и цены|
      | Магазины на карте|
      |Динамика цен|
      |Отзывы|



