Feature:
  In order to remove unnecessary notes
  As a user
  I want to make them disappear
  
  Scenario:
    Given there is a note with content "Home planet: LV-426"
    And I am on the homepage
    When I follow "Delete"
    Then I should not see "Home planet: LV-426"