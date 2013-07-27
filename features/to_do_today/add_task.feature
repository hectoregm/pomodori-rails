Feature: Let user add new "today" tasks
  As a user
  I want to add new tasks for today
  So that I can get things done

  Scenario: Show form to add new task
    Given I am an user
    When I go to the today page
    Then I should see a form to add a new task

  Scenario: User adds a new task in the today page
    Given I am an user
    And I go to the today page
    And I input "Get to Mount Doom" as the new task name
    And I input "5" as the task estimate
    When I click "Add"
    Then I should see "Get to Mount Doom" in the today task list
    And the add task should be reset
