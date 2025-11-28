Feature: WebDriverUni - Contact Us page


Scenario: Validation Contact US Form
    Given I navigate to WebDriverUni Contact Us Page
    When I click on the contact us button 
    And I enter a valid first name
    And I enter a valid last name
    And I enter a valid email address
    And I enter a comment
    And I click on the submit button
    Then I should be presented with a successful submission message

Scenario: Validation Contact US Form with Invalid Email
    Given I navigate to WebDriverUni Contact Us Page
    When I click on the contact us button 
    And I enter a valid first name
    And I enter a valid last name
    And I enter a comment
    And I click on the submit button
    Then I should be presented with an unsuccessful submission message


Scenario: Validation Contact US Form with user typed data
    Given I navigate to WebDriverUni Contact Us Page
    When I click on the contact us button 
    And I enter a valid first name "Alice"
    And I enter a valid last name "Smith"
    And I enter a valid email address "123@test.com"
    And I enter a comment "Testing contact us form submission."
    And I click on the submit button
    Then I should be presented with a successful submission message
