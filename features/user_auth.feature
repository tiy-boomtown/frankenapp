Feature: authenticating users

  Scenario: failing to sign up
    Given I'm on the sign up page
     When try mis-matched passwords
     Then I should be on the sign up page
      And I should see that passwords don't match

  Scenario: signing up for new account
    Given I do not have an account
      And I'm on the sign up page
     When I register as james@example.com
     Then I should be on the home page
      And I have a user account

  Scenario: registering a taken email address
    Given user@example.com has an account
      And I'm on the sign up page
     When I register as user@example.com
     Then I should be on the sign up page
      And I should see that the email is taken
      And there should be no new user accounts