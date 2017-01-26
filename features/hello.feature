Feature: using cucumber

  Scenario: adding two numbers
    Given I have 2
    When I add 2
    Then I should have 4

  Scenario: adding two different numbers
    Given I have 5
     When I add 7
     Then I should have 12

  Scenario Outline: adding two
    Given I have <first>
     When I add <second>
     Then I should have <sum>

    Examples:
      | first | second | sum |
      | 2     | 2      | 4   |
      | 5     | 7      | 12  |
      | 100   | 100    | 200 |

  Scenario: adding three numbers
    Given I have 2
    When I add 2
     And I add 4
    Then I should have 8