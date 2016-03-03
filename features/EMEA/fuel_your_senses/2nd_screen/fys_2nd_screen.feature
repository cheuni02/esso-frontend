
Feature: Fuel Your Senses Virtual Reality Experience screen
  As a visitor to the esso websites interested about how Esso fuels are catered for every need eg McLaren Formula 1
  We need to check that this FuelYourSenses section of the Esso site provides all that information
  In this case we are checking 2nd screen Fuel Your Senses Virtual Reality Experience screen


  Background: navigate to the FYS 2nd screen
    Given I am currently on FYS screen - 2 - 'Fuel Your Senses Virtual Reality Experience'

  Scenario: Look and feel
    Then there should be a title 'Fuel Your Senses Virtual Reality Experience' with copy underneath
    And there should be a button 'Get Started' which links to the 360 degree video

  Scenario: 360 degree video
    When I click on the button 'get started'
    Then The Youtube video for FYS should load in a new window
    And I close the FYS YouTube window
