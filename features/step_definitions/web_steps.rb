Given /^I am on the homepage$/ do
  visit '/'
end

Given /^I am logged in as an "([^"]*)"$/ do |role|
  user = Factory(:user);

  step %{I sign in as "user@mail.com" with "password"}
end


When /^(?:|I )fill in "([^"]*)" with "([^"]*)"$/ do |field, value|
  fill_in field, with: value
end

When /^I follow "([^\"]*)"$/ do |link|
  click_link  link
end

When /^I edit "([^"]*)" with "([^"]*)"$/ do |field, value|
  pending
end

When /^I fill in "([^\"]*)" with "([^\"]*)" in context of "([^\"]*)"$/ do |field, value, context|
  find_by_id(context).fill_in field, with: value
end

Then /^I press "([^\"]*)"$/ do |button|
  click_button button
end

Then /^I should see "([^\"]*)"$/ do |text|
  page.should(have_content(text), "Expected to see the #{ text.inspect } message, but did not.")
end

Then /^I should not see "([^"]*)"$/ do |text|
  page.should_not(have_content(text), "Expected to see the #{ text.inspect } message, but did not.")
end