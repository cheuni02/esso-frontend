@EMEA
Feature: Hero screen '#FuelYourSenses'
  As a visitor to the esso websites interested about how Esso fuels are catered for every need eg McLaren Formula 1
  We need to check that this FuelYourSenses section of the Esso site provides all that information
  In this case we are checking 1st screen '#FuelYourSenses'


  Scenario: Look and feel
    Given I am currently on FYS screen - 1 - '#FuelYourSenses'
    Then The '#FuelYourSenses' hero image and title show, with copy underneath title
    And there should be button 'Scroll to start'
    And The formula1 link should be present