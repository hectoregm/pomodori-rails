Feature: Let user add new "today" tasks
  As a user
  I want to add new tasks for today
  So that I can get things done

  Scenario: Show form to add new task
    Given I am a user
    When I go to the today page
    Then I should see a form to add a new task
