Given /^I am on the homepage$/ do
  visit '/'
end

When /^(?:|I )fill in "([^"]*)" with "([^"]*)"$/ do |field, value|
  field = 'note_content' if field == 'Content'
  fill_in field, with: value
end

When /^I press "([^"]*)"$/ do |label|
  click_button label
end

When /^I follow "([^"]*)"$/ do |link|
  click_link link
end

Then /^(?:|I )should see "([^"]*)"$/ do |text|
  if page.respond_to? :should
    page.should have_content(text)
  else
    assert page.has_content?(text)
  end
end

When /^I edit "([^"]*)" with "([^"]*)"$/ do |field, value|
  save_and_open_page
end
