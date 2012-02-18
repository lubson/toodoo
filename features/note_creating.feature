feaFeature: Creating notes
  In order to have notes
  As a user
  I want to create them easily

  Background:
    Given I am logged in as an "user"
    And I am on the homepage

    Scenario: Creating a note
      When I fill in "note" with "Home planet: LV-426"
      And I press "Add this note"
      Then I should see "Note has been created."
      And I should see "Home planet: LV-426"

    Scenario: Creating an blank note
      When I fill in "Content" with " "
      And I press "Add this note"
      Then I should see "Note has not been created"
      And I should see "Please fill out this field"
      But I should not see "Home planet: LV-426"