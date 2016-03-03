
Feature: Sight and Sound video info and video links screen
  As a visitor to the esso websites interested about how Esso fuels are catered for every need e.g. McLaren Formula 1
  We need to check that this FuelYourSenses section of the Esso site provides all that information
  In this case we are checking 3rd screen - Sight and Sound video info and video links screen

  Background: FYS 3rd screen
    Given I am currently on FYS screen - 3 - 'Fuel Your Senses - sight & sound'


  Scenario: Sight video page look and feel
    When I click on the '< sight' link on the page
    Then I should be navigated to the Sight page, which has a title and copy
    And  a button to play the sight video

  Scenario: play sight video
    When I navigate to Sight video page
    And click to play sight video
    Then Sight Video should play

  Scenario: Sound video page look and feel
    When I click on the 'sound >' link on the page
    Then I should be navigated to the Sound page, which has a title and copy
    And  a button to play the sound video

  Scenario: play sound video
    When I navigate to Sound video page
    And click to play sound video
    Then Sound Video should play

  Scenario: play 'the making of our film' video
    When I navigate to Sound video page
    And click 'The making of our film' video
    Then 'The making of our film' video should play

