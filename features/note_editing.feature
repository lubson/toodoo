Feature:
  In order to change content of notes
  As a user
  I want to edit note easily via interface

  Scenario:
    Given there is a note with content "Home planet: LV-426"
    And I am on the homepage
    When I follow "Edit"
    And I edit "Content" with "Home planet of xenomorphs: LV-426"
    And I follow "Save"
    Then I should see "Home planet of xenomorphs: LV-426"
