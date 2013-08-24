Feature: Let user have a timer for his pomodoro
  As a user
  I want to have a timer
  So I can know when I successfuly finished a pomodoro

  Scenario: Show a countdown timer
    Given I am an user
    And I have a task to "Defeat Balrog"
    When I start to work on the "Defeat Balrog" task
    Then I should see a countdown timer
