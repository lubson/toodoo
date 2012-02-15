Given %{I sign up as "$email" with "$password"} do |email, password|
  step %{I am on the homepage}
  step %{I fill in "Email" with "#{email}" in context of "sign-up"}
  step %{I fill in "Password" with "#{password}" in context of "sign-up"}
  step %{I fill in "Password confirmation" with "#{password}" in context of "sign-up"}
  step %{I press "Sign up"}
  step %{I should see "signed in as #{email}"}
end

Given %{I sign in as "$email" with "$password"} do |email, password|
  step %{there are the following users:}, table(%{
          |   email  |   password  |
          | #{email} | #{password} |
  })
  step %{I am on the homepage}
  step %{I fill in "Email" with "#{email}" in context of "sign-in"}
  step %{I fill in "Password" with "#{password}" in context of "sign-in"}
  step %{I press "Sign in"}
  step %{I should see "signed in as #{email}"}
end

Given %{I am signed in as "$email" with "$password" and I sign out} do |email, password|
  step %{there are the following users:}, table(%{
          |   email  |   password  |
          | #{email} | #{password} |
  })
  step %{I am signed in as "#{email}" with "#{password}"}
  step %{I follow "Sign out"}
  step %{I should see "Welcome to Toodoo"}
end
 
Given /^there are the following users:$/ do |table|
  table.hashes.each do |attributes|
    User.create!(attributes)
  end
end

Given /^I am signed in as "([^\"]*)" with "([^\"]*)"$/ do |email, password|
  visit '/'
  find_by_id('sign-in').fill_in 'Email', with: email
  find_by_id('sign-in').fill_in 'Password', with: password
  click_button 'Sign in'
  page.should have_content("signed in as #{email}")
end
