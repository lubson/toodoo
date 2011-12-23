Feature: Creating notes
  In order to have notes
  As a user
  I want to create them easily

  Scenario: Creating a note
    Given I am on the homepage
    When I fill in "Content" with "Buy some bacon and save it"
    And I press "Add this note"
    Then I should see "Note has been created."
    And I should see "Buy some bacon and save it."