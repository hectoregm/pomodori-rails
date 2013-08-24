Feature: Let user start working on a today task
  As a user
  I want to add start working on my top task
  So that I can get things done

  Scenario: User chooses the task to work on
    Given I am an user
    And I have a task to "Defeat Balrog"
    When I go to the today page
    And I start the task "Defeat Balrog"
    Then I should see a pomodoro page
