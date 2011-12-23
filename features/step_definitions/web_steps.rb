Given /^I am on the homepage$/ do
  visit '/'
end

When /^I fill in "([^"]*)" with "([^"]*)"$/ do |field, value|
  fill_in field, with: value
end

When /^I press "([^"]*)"$/ do |label|
  click_button label
end

Then /^I should see "([^"]*)"$/ do |content|
  page.has_content? content
end
