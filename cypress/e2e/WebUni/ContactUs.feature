Feature: WebDriverUni - Contact Us page

Background: Visit and goto Contact us
    Given I navigate to WebDriverUni Contact Us Page
    When I click on the contact us button

Scenario: Validation Contact US Form

    And I enter a valid first name
    And I enter a valid last name
    And I enter a valid email address
    And I enter a comment
    And I click on the submit button
    Then I should be presented with a successful submission message

Scenario: Validation Contact US Form with Invalid Email
    
    And I enter a valid first name
    And I enter a valid last name
    And I enter a comment
    And I click on the submit button
    Then I should be presented with an unsuccessful submission message


Scenario: Validation Contact US Form with user typed data
    
    And I enter a valid first name "Alice"
    And I enter a valid last name "Smith"
    And I enter a valid email address "123@test.com"
    And I enter a comment "Testing contact us form submission."
    And I click on the submit button
    Then I should be presented with a successful submission message

Scenario Outline: Validation Contacy US page
    
    And I type a valid first name <firstName> and a last name '<lastName>'
    And I type a '<emailAddress>' and a comment '<comment>'
    And I click on the submit button
    Then I should be presented with a successful text '<message>'

    Examples:
        | firstName | lastName | emailAddress       | comment                     | message                      |
        | John      | Doe      | test1@test.com     | This is a test comment.     | Thank You for your Message!  |
        | Jane      | Smith    | test2@test.com     | Another test comment.       | Thank You for your Message!  |
        | Jane      | Smith1    | test2123323123    | Another test comment.       | Error: Invalid email address |
