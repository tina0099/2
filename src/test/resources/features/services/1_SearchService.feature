Feature: Check main elements of the search Service

  As a user of a pn.com.ua application
  I want to check main search Service
  To be sure, that service can handle all types of requests


  @tempApi
  @devApi
  Scenario: 1 - Perform simple search request. Verify 200 status
    When User send GET search request with 65799716 search parameter
    Then http status code of search response is 200
    When User send POST search request with 65799716 search parameter
    When User send POST validate request with 65799716 search parameter


  @tempApi
  @devApi
  Scenario: 2 - Perform bad search request. Verify 400 status
    When User send bad search request with 65799716 externalIds and correlationId header
    Then http status code of search response is 400


  @tempApi
  @devApi
  Scenario: 3 - Perform GET search request without correlationId header
    Given User send GET search request by externalId 65799716 without headers
    When http status code of search response is 400
    Then Appropriate message about missing CorrelationId header is present in the search response
