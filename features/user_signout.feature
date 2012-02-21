Feature: Signing out
  In oreder to leave the site
  As an signed in user
  I want to be able to sign out

  Background:
    Given there are the following users:
      | email           | password | password_confirmation |
      | user@toodoo.com | toodoo   | toodoo                |
    And I am on the homepage
    And I am signed in as them
    
  Scenario: Signing out via link
    When I sign out
    And I should see "Sign in"