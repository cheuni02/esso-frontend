
Feature: 'McLaren Honda and Esso' screen
  As a visitor to the esso websites interested about how Esso fuels are catered for every need e.g. McLaren Formula 1
  We need to check that this FuelYourSenses section of the Esso site provides all that  information
  In this case we are examining the 6th screen - 'McLaren Honda and Esso' screen

  Background: 'McLaren Honda and Esso' screen
    Given I am currently on FYS screen - 6 - 'McLaren Honda and Esso'

  Scenario: Look and feel
    Then there should be an image of a racer in the background
    And Title, Copy and buttons for sharing should show

  Scenario: Follow via Twitter
    When I click on the twitter link on 'McLaren Honda and Esso' screen
    Then new Twitter window should show related to this particular screen
    And I close the McLaren Twitter window

  Scenario: Like via Facebook
    When I click on the facebook link on 'McLaren Honda and Esso' screen
    Then new Facebook window should show related to this particular screen
    And I close the Esso Facebook window