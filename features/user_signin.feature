Feature: Sign up
  In order to use the application
  As an registered user
  I want to be able to loggin to my account

  Background:
    Given I am on the homepage
    And there are the following users:
      | email           | password | password_confirmation |
      | user@toodoo.com | toodoo   | toodoo                |

    Scenario: Signing in with valid data
      When I fill in "signin_email" with "user@toodoo.com"
      And I fill in "signin_password" with "toodoo"
      And I press "Sign in"
      Then I should see "Signed in as user@toodoo.com"
      And I should see "Sign out"

    Scenario: Signing in with blank input field
      When I fill in "signin_email" with "user@toodoo.com"
      And I fill in "signin_password" with ""
      And I press "Sign in"
      Then I should see "Please fill out this field."

    Scenario: Signing up with incorect data
      When I fill in "signin_email" with "user@toodoo.com"
      And I fill in "signin_password" with "password"
      And I press "Sign in"
      Then I should see "Incorect email or password"
      And I should see "Forgot password?"