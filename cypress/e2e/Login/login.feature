Feature: webdriveruni - Login page

    Scenario Outline: Validate valid and invalid login credentials
        Given I navigate to WebDriverUni Contact Us Page
        When I click on the login button
        And I enter a username <username>
        And I enter a password <password>
        And I click on the signIn button
        Then I should be presented with an alert box message '<alertMessage>'

        Examples:
            | username  | password     | alertMessage         |
            | webdriver | webdriver123 | validation succeeded |
            | webdriver | invalidPass  | validation failed    |