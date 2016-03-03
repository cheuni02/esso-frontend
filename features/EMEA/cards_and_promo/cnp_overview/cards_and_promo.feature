
Feature: Esso 'Cards and Promotions' page functionality
  As a visitor to the esso websites interested about what rewards there are with Esso
  We need to check that these info show; Clubcard points, Esso UK Points Pit Stop, Esso card
  And that other visitors can access the page through the top navigation

  Background: Visiting the 'Cards & Promotions' homepage
    Given i visit the 'overview' page on the esso website via the top level navigation via 'Cards & Promotions'

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

  Scenario: 'Clubcard points' module
    When i examine module #5 on the fuels page in my browser
    Then i should see a module title element 'Clubcard points' for module #5
    And i should see content along with an image displayed on module #5
    And there should also be a link contained within module #5 as a button
    And that link on module #5 takes user to '/loyalty-program' page

  Scenario: 'Esso UK Points Pit Stop' module
    When i examine module #7 on the fuels page in my browser
    Then i should see a module title element 'Esso UK Points Pit Stop' for module #7
    And i should see content along with an image displayed on module #7
    And there should also be a link contained within module #7 as a button
    And that link on module #7 takes user to '/pitstop' page

  Scenario: 'Esso card' module
    When i examine module #9 on the fuels page in my browser
    Then i should see a module title element 'Esso card' for module #9
    And i should see content along with an image displayed on module #9
    And there should also be a link contained within module #9 as a button
    And that link on module #9 takes user to 'esso-card' page

  Scenario: Page Footer
    When i check each of the links in the footer area of the fuels page
    Then there should be 4 modules and i should see that each item has a link and associated image with text