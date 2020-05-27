
  Feature: Login to Business Service Portal(BSP)

  Background:
    Given user is on BSP (Business Service Portal) login page

  Scenario Outline: User should be able to login successfully on (BSP) Business Service Portal with valid credentials
    When user enters valid "<username>" and "<password>"
    And user clicks on login button
    Then user should be able to log into (BSP) Business Service Portal

    Examples:
      | username                | password    |
      | adminuser123@abc.com    | admin123    |
      | businessuser123@abc.com | business123 |

  Scenario: Customer should not be able to login successfully into (BSP) Business Service Portal with valid customer credentials
    When customer enters valid customer credentials
    And customer clicks on login button
    Then customer should not be able to log into (BSP) Business Service Portal


  Scenario Outline: Admin user should not be able to login successfully into (BSP) Business Service Portal with invalid credentials
    When user enters invalid/valid "<username>" and invalid/valid "<password>"
    Then user should be able to see the error message and should not log in

    Examples:
      | username             | password |
      | adminuser@abc.com    | admin    |
      | adminuser@abc.com    | admin123 |
      | adminuser@abc.com    |          |
      |                      | admin    |
      | adminuser123@abc.com | admin    |
      |                      |          |

  Scenario Outline: Business user should not be able to login successfully into (BSP) Business Service Portal with invalid credentials
    When user enters invalid/valid "<username>" and invalid/valid "<password>"
    Then user should be able to see the error message and should not log in

    Examples:
      | username                | password    |
      | businessuser@abc.com    | business    |
      | businessuser@abc.com    | business123 |
      | businessuser@abc.com    |             |
      |                         | business    |
      | businessuser123@abc.com | business    |
      |                         |             |
