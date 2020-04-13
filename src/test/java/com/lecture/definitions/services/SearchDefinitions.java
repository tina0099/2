package com.lecture.definitions.services;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class SearchDefinitions {

    @Given("^User send GET search request with (\\w+) search parameter$")
    public void createSimpleSearchRequest(String orderId) {

    }

    @Given("^User send bad search request with (\\w+) externalIds and correlationId header$")
    public void createBadSearchRequest(String orderId) {

    }

    @When("http status code of search response is (\\d+)$")
    public void verifyStatusCodeInPurchaseOrder(int code) {

    }

    @Given("^User send GET search request by externalId (\\w+) without headers$")
    public void userSendGetPurchaseOrderRequestByExternalIdWithoutHeaders(String externalId) {

    }

    @Then("Appropriate message about missing (\\w+) header is present in the search response$")
    public void verifyErrorMessage(String missingHeader) {

    }

    @Then("Search Results are sorted")
    public void searchResultsAreSorted() {
        
    }

    @Then("Search Results are displayed according to the <view>")
    public void searchResultsAreDisplayedAccordingToTheView() {
    }
}