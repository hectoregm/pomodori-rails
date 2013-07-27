Feature: List all user "today" tasks
  As a user
  I want to see my tasks for today
  So that I can get things done

  Scenario: Show the list of tasks
    Given I am a user with tasks for today
    When I go to the today page
    Then I should see my tasks for today

  Scenario: Show the pomodori estimate of each task
    Given I am a user with tasks for today
    When I go to the today page
    Then I should see the estimates of my tasks
