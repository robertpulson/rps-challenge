Feature: Starting the game
  In order to play RockPaperScissors
  As a nostaligic player
  I want to start a new game

  Scenario: Registering
    Given I am on the homepage
    When I follow "PLAY"
    Then I should see "Enter your Name"