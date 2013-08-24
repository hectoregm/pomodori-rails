Feature: Let user remove a task from my today list
  As a user
  I want to add remove tasks from my Today todo
  So that I can concentrate on my most important tasks

  Scenario: User removes a task from the Today todo
    Given I am an user
    And I have a task to "Defeat Balrog"
    When I go to the today page
    And I remove the task "Defeat Balrog"
    Then I should not see task "Defeat Balrog"
