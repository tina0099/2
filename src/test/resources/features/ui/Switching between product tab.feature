Feature: BDD-1 Verify Login/Logout functionality

  As a user of an application
  I want to switch between tab on the product page


  @smoke
  Scenario: 1 - Unauthorized user
    When User open the Product page
    And Click on the <tab>
    Then <tab> is loaded

      |tab|
      |Description and price|
    | Markets on the map|
    |Prices Dynamic|
    |Review|


  @smoke
  Scenario: 2 - Authorized  user
    Given Authorized read user login
    When User open the Product page
    And Click on the <tab>
    Then <tab> is loaded

      |tab|
      |Description and price|
      | Markets on the map|
      |Prices Dynamic|
      |Review|



