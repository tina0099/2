package com.lecture.definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;


public class LoginLogoutDefinitions {

    @Given("^User log in to the PN main page with ([\\w]+) user$")
    public void loginWithUser(String role) {
        System.out.println(role);
    }


    @Given("^User duplicate browser tab$")
    public void duplicatePage() {

    }

    @Given("^return to the first browser tab$")
    public void returnToThePreviousPage() {

    }

    @Then("^after login user was redirected to the (Main) page$")
    public void verifyBrowserTab(String title) {

    }

    @And("^verify that login to the application was correctly performed$")
    public void verifyLoginPopup() {

    }

    @Given("^User successfully logout form the application and redirected to the OKTA page$")
    public void logoutFromTheApplication() {

    }

    @And("^user select order via checkbox$")
    public void selectOrderViaCheckbox() {

    }

    @And("^user select and approve all orders$")
    public void selectAllOrders() {

    }

    @And("role (\\w+) role$")
    public void test(String user) {

    }

    @Given("Authorized read user login")
    public void authorizedReadUserLogin() {

    }
}