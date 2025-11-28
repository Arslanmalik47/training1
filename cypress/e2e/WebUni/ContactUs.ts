/// <reference types="cypress" />
import { Given, Then, When } from "@badeball/cypress-cucumber-preprocessor";



Given("I navigate to WebDriverUni Contact Us Page", () => {
  cy.visit("http://www.webdriveruniversity.com/");
});

When("I click on the contact us button", () => {
  cy.get("#contact-us").invoke("removeAttr", "target").click({ force: true });
});

When("I enter a valid first name", () => {
  cy.get('input[name="first_name"]').type("John");
});

When("I enter a valid last name", () => {
  cy.get('input[name="last_name"]').type("Doe");
});

When("I enter a valid email address", () => {
  cy.get('input[name="email"]').type("abx@gmail.com");
});

When("I enter a comment", () => {
  cy.get('textarea[name="message"]').type("This is a test comment.");
});

When("I click on the submit button", () => {
  cy.get('input[type="submit"]').click();
});

Then("I should be presented with a successful submission message", () => {
  cy.get("h1").should("have.text","Thank You for your Message!");
});

Then("I should be presented with an unsuccessful submission message", () => {
  cy.get("body").should("contain.text","Error: Invalid email address");
});



When("I enter a valid first name {string}", (first_name:string) => {
  cy.get('input[name="first_name"]').type(first_name);
});

When("I enter a valid last name {string}", (last_name:string) => {
  cy.get('input[name="last_name"]').type(last_name);
});

When("I enter a valid email address {string}", (email:string) => {
  cy.get('input[name="email"]').type(email);
});

When("I enter a comment {string}", (comment:string) => {
  cy.get('textarea[name="message"]').type(comment);
});
