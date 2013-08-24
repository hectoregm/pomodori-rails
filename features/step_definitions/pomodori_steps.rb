Given(/^I am an user$/) do
end

Given(/^I am an user with tasks for today$/) do
  Task.create(name: "Defend Helm's Deep from Saruman orcs", today: true, estimate: 2)
  Task.create(name: "Prepare the defenses in Minas Tirith", today: true, estimate: 4)
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

Then(/^I should see a form to add a new task$/) do
  expect(page).to have_selector('#new_task')
  expect(page).to have_selector('#new_task input[type=text]')
  expect(page).to have_selector('#new_task input[type=submit]')
end

Given(/^I input "(.*?)" as the new task name$/) do |name|
  page.fill_in('task_name', with: name)
end

Given(/^I input "(.*?)" as the task estimate$/) do |estimate|
  page.select(estimate, from: 'task_estimate')
end

When(/^I click "(.*?)"$/) do |arg1|
  page.click_on('Add')
end

Then(/^I should see "(.*?)" in the today task list$/) do |task_name|
  expect(page).to have_content(task_name)
end

Then(/^the add task should be reset$/) do
  expect(page.find_field('task_name').value).to be_nil
  expect(page.find_field('task_estimate').value).to eq "1"
end

Given(/^I have a task to "(.*?)"$/) do |task_name|
  Task.create(name: task_name, today: true)
end

When(/^I remove the task "(.*?)"$/) do |task_name|
  page.click_on "Remove"
end

Then(/^I should not see task "(.*?)"$/) do |task_name|
  expect(page).to_not have_content(task_name)
end

When(/^I start the task "(.*?)"$/) do |task_name|
  page.find('li', text: task_name).click_on("Start")
end

Then(/^I should see a pomodoro page$/) do
  expect(page).to have_content("Pomodoro Tracking")
end
