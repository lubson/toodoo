Feature: Sign up
  In order to use the application
  As a user
  I want to be able to create my account

  Background:
    Given I am on the homepage

    Scenario: Signing up with valid data
      When I fill in "signup_email" with "user@mail.com"
      And I fill in "signup_password" with "password"
      And I fill in "signup_password_confirmation" with "password"
      And I press "Sign up"
      Then I should see "Signed in as user@mail.com"
      And I should see "Sign out"
      And I should see "You have signed up successfuly. Welcome to toodoo!"

    Scenario: Signing up with blank input field
      When I fill in "signup_email" with " "
      And I fill in "signup_password" with "password"
      And I fill in "signup_password_confirmation" with "password"
      And I press "Sign up"
      Then I should see "Please fill out this field."

    Scenario: Signing up with mismatch in passwords
      When I fill in "signup_email" with "user@mail.com"
      And I fill in "signup_password" with "password"
      And I fill in "signup_password_confirmation" with "drowssap"
      And I press "Sign up"
      Then I should see "doesn't match confirmation"