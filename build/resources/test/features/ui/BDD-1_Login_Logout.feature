Feature: BDD-1 Verify Login/Logout functionality

  As a user of an application
  I want to check login/logout functionality
  To be sure, that application available only for authorized users

  @smoke
  Scenario: 1 - Authorized read user login
    When User log in to the PN main page with read user
    Then after login user was redirected to the Main page


  @smoke
  Scenario: 2 - Authorized admin user login
    When User log in to the PN main page with admin user
    Then after login user was redirected to the Main page


  Scenario Outline:  3 - Authorized read user login
    When User log in to the PN main page with <role> user
    Then after login user was redirected to the Main page

    @smoke
    Examples:
      | role  |
      | read  |
      | admin |