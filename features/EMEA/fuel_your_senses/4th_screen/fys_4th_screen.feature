
Feature: '#MurrayYourTweet' screen
  As a visitor to the esso websites interested about how Esso fuels are catered for every need e.g. McLaren Formula 1
  We need to check that this FuelYourSenses section of the Esso site provides all that  information
  In this case we are examining the 4th screen - '#MurrayYourTweet' screen

  Background: '#MurrayYourTweet' screen
    Given I am currently on FYS screen - 4 - '#MurrayYourTweet'

  Scenario: Look and feel
    Then there should be an image of Murray Walker in the background
    And Title, Copy and buttons for sharing

  Scenario: Follow via Twitter
    When I click on the twitter link on '#MurrayYourTweet' screen
    Then new Twitter window should show related to this screen
    And I close the Esso Twitter window

  Scenario: Like via Facebook
    When I click on the facebook link on '#MurrayYourTweet' screen
    Then new Facebook window should show related to this screen
    And I close the Esso Facebook window