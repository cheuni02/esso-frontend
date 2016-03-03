
Feature: Esso 'Our Stations' homepage functionality
  As the owner of Esso Europe websites
  We need to ensure the 'Our Stations' homepage works correctly
  To make sure that the user can; find the local station by search,
  find out more about new look stations,
  find the nearest Esso Car Wash,
  And to share the page with Facebook and Twitter

  Background: Visiting the 'Our Stations' homepage, and check that the 'Find a station near me' button when geolocation in browser settings are disabled
    Given i visit the 'Our Stations' page on the esso website via the top level navigation

  @esso-uk @esso-fr @esso-de @esso-it @esso-nl @esso-be @esso-lu @esso-no @esso-ie
  Scenario Outline: input values and make sure the search yields the closest matching location
    When I enter a location that should have an Esso Station nearby - <location>
    Then the nearest station matches should be shown for <location>
    And the weather forecast for <location> should show

    Examples:
    | location   |
    | Richmond   |
    | Hounslow   |
    | Runcorn    |
    | Salford    |


  @esso-uk @esso-fr @esso-de @esso-it @esso-nl @esso-be @esso-lu @esso-no @esso-ie
  Scenario: Testing the Nearest station module
    When I enter a location that should have an Esso Station nearby - London
    Then I should get the nearest station name displayed, with its address and contact details
    And 3 buttons 'Plan Route', 'Station Details', and 'Stations nearby'
    And a promotion for Esso Fuel Finder app, equiped with download buttons for iOS and Android, and an image of it

  @esso-uk
  Scenario: check that the 'Our Esso Synergy Stations' module exists
    When i examine module #5 on the fuels page in my browser
    Then i should see a module title element 'Our Esso Synergy Stations' for module #5
    And i should see content along with an image displayed on module #5
    And there should also be a link contained within module #5 as a button
    And that link on module #5 takes user to '/synergy' page

  @esso-uk
  Scenario: check that the 'Car Wash' module exists
    When i examine module #7 on the fuels page in my browser
    Then i should see a module title element 'Car wash' for module #7
    And i should see content along with an image displayed on module #7
    And there should also be a link contained within module #7 as a button
    And that link on module #7 takes user to 'http://www.essofuelfinder.co.uk/' page

  @esso-uk @esso-fr @esso-de @esso-it @esso-nl @esso-be @esso-lu @esso-no @esso-ie
  Scenario Outline: check that the links to the Twitter and Facebook shares are correct
    When I click on <social> link
    Then The <social> link's page should open

  Examples:
  | social   |
  | Twitter  |
  | Facebook |

  @EMEA
  Scenario: Stations Footer
    When i check each of the links in the footer area of the fuels page
    Then there should be 4 modules and i should see that each item has a link and associated image with text
