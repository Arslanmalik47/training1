/// <reference types="cypress" />
import { Given, Then, When } from "@badeball/cypress-cucumber-preprocessor";

let stub: any;

When('I click on the login button', () => {
    cy.get('#login-portal').invoke('removeAttr', 'target').click();
});

When('I enter a username {}', (username: string) => {
    cy.get('#text').type(username);
});

When('I enter a password {}', (password: string) => {
    cy.get('#password').type(password);
});

When('I click on the signIn button', () => {
    stub = cy.stub();
    cy.on('window:alert', stub);
    cy.get('#login-button').click();
});

Then('I should be presented with an alert box message {string}', (alertMessage: string) => {
    cy.then(() => {
        expect(stub.getCall(0)).to.be.calledWith(alertMessage);
    });
});