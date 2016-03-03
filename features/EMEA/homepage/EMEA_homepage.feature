
Feature: Esso Homepages
  As the owner of Esso Europe websites
  We need to ensure our homepages work correctly
  As our customers want to see a working site when they visit for the 1st time
  This is the more detailed test on the homepage functionality

  Background: Visiting the esso homepage
    Given i am on the Locale specific Esso Homepage

  Scenario Outline: Testing the station finder for stations in my area
    When I enter a location that should have an Esso Station nearby - <location>
    Then the nearest station matches should be shown for <location>
    And the weather forecast for <location> should show

    Examples:
    | location   |
    | London     |
    | Birmingham |
    | Edinburgh  |
    | Berlin     |
    | Tokyo      |
    | Beijing    |
    | Antarctica |
    | Siberia    |


  Scenario Outline: Testing the station finder - invalid locations
    When I input a location which is impossible to match - <location>
    Then There should be a message - We could not find <location>. Try adding a city, county or postcode.

    Examples:
    |location             |
    |XHJGH                |
    |XKLDTY               |
    |sdfsdfsdfttrytiyuirit|
    |TR9 8NP              |
    |XR8 4FR              |
    |GY68NPYZ             |
    |Strontium            |
    |Centre of the earth  |


  Scenario: Testing the Nearest station module
    When I enter a location that should have an Esso Station nearby - London
    Then I should get the nearest station name displayed, with its address and contact details
    And 3 buttons 'Plan Route', 'Station Details', and 'Stations nearby'
    And a promotion for Esso Fuel Finder app, equiped with download buttons for iOS and Android, and an image of it


  Scenario: Weather Module
    When i examine module #4 on the fuels page in my browser
    Then i should see content along with an image displayed on module #4
    And there should also be a link which directs user to supreme fuels page


  Scenario: 'Did You Know?' Module
    When i located the did you know panel on the esso homepage
    Then i should see there are four Esso facts displayed in the module
