Given /^there is a note with content "([^\"]*)"$/ do |content|
   Factory(:note, content: content)
end
