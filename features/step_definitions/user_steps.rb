Given /^there are the following users:$/ do |table|
  table.hashes.each do |attributes|
    @user = User.create!(attributes)
  end
end

Given /^I am signed in as them$/ do
  steps(%Q{
    Given I am on the homepage
    When I fill in "signin_email" with "#{@user.email}"
    And I fill in "signin_password" with "toodoo"
    And I press "Sign in"
    Then I should see "Signed in as #{@user.email}"
  })
end

Given /^I am logged in as an "([^"]*)"$/ do |role|
  @user = Factory(:user);
  step %{I am signed in as them}
end