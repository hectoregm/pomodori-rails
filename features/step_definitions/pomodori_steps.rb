Given(/^I am a user with tasks for today$/) do
end

When(/^I go to the today page$/) do
  visit tasks_path
end

Then(/^I should see my tasks for today$/) do
  expect(page).to have_content('To Do Today')
  expect(page.all('.tasks li')).to_not be_empty
end

Then(/^I should see the estimates of my tasks$/) do
  expect(page.all('.tasks li .estimate')).to_not be_empty
end
