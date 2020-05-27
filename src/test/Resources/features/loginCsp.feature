
  Feature: Login to Customer Service Portal(CSP)

  Background:
    Given user is on CSP (Customer Service Portal) login page


  Scenario Outline: User should be able to login successfully into CSP (Customer Service Portal)with valid credentials
    When user enters valid "<username>" and "<password>"
    And user clicks on login button
    Then user should be able to log into (CSP) Customer Service Portal

    Examples:
      | username               | password    |
      | adminuser123@abc.com   | admin123    |
      | customer.123@gmail.com | customer123 |


    Scenario: Business user should not be able to login successfully into (CSP) Customer Service Portal with valid business credentials
    When user enters valid business credentials
    And user clicks on login button
    Then user should not be able to log into (CSP) Customer Service Portal


  Scenario Outline: Admin should not be able to login successfully into (CSP) Customer Service Portal  with invalid credentials
    When user enters invalid/valid "<username>" and invalid/valid "<password>"
    Then user should be able to see the error message and should not login

    Examples:
      | username             | password |
      | adminuser@abc.com    | admin    |
      | adminuser@abc.com    | admin123 |
      | adminuser@abc.com    |          |
      |                      | admin    |
      | adminuser123@abc.com | admin    |
      |                      |          |

  Scenario Outline: Customer should not be able to login successfully into (CSP) Customer Service Portal with invalid credentials
    When user enters invalid/valid "<username>" and  invalid/valid "<password>"
    Then user should be able to see the error message and should not login
    Examples:
      | username               | password    |
      | customer@gmail.com     | customer    |
      | customer@gmail.com     | customer123 |
      | customer@gmail.com     |             |
      |                        | customer    |
      | customer.123@gmail.com | customer    |
      |                        |             |
