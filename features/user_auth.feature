Feature: authenticating users

  Scenario: failing to sign up
    Given I'm on the sign up page
     When try mis-matched passwords
     Then I should be on the sign up page
      And I should see that passwords don't match

  Scenario: signing up for new account
    Given I do not have an account
      And I'm on the sign up page
     When I create a new account
     Then I should be on the home page
      And I should see my email