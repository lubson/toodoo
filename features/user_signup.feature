Feature: Sign up
  In order to use the application
  As a user
  I want to be able to create my account

  Background:
    Given I am on the homepage

    Scenario: Signing up with valid data
      When I fill in "Email" with "user@mail.com" in context of "sign-up"
      And I fill in "Password" with "password" in context of "sign-up"
      And I fill in "Password confirmation" with "password"
      And I press "Sign up"
      Then I should see "user@mail.com"

    Scenario: Signing up with blank input field
      When I fill in "Email" with " " in context of "sign-up"
      And I fill in "Password" with "password" in context of "sign-up"
      And I fill in "Password confirmation" with "password" in context of "sign-up"
      And I press "Sign up"
      Then I should see "Sign up"

    Scenario: Signing up with mismatch in passwords
      When I fill in "Email" with "user@mail.com" in context of "sign-up"
      And I fill in "Password" with "password" in context of "sign-up"
      And I fill in "Password confirmation" with "drowssap" in context of "sign-up"
      And I press "Sign up"
      Then I should see "doesn't match confirmation"