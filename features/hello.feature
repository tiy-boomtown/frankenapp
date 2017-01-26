Feature: using cucumber

  Scenario: adding two numbers
    Given I have 2
    When I add 2
    Then I should have 4

  Scenario: adding three numbers
    Given I have 2
    When I add 2
     And I add 4
    Then I should have 8