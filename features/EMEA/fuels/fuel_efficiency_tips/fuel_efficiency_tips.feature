@EMEA
Feature: Fuel Efficiency Tips page
  As a visitor to the esso websites interested about how to be fuel effiecient
  We need to check that all the relevent details are displayed on these pages
  And that other visitors can access the pages through the top navigation

  Background: Visiting the Tips page
    Given i visit the 'Tips' page on the esso website via the top level navigation via 'fuels'

  Scenario: Tips hero module
    When i examine the main top level module on the page
    Then i should see a module containing a header and sub header


  Scenario Outline: Tips module
    When I click on the panel title <panel_title>, which is panel number <panel_no>
    Then panel <panel_no> should expand and reveal the explanation
    And I can minimise panel <panel_no>


  Examples:
  | panel_title             | panel_no |
  | Car maintenance         | 1        |
  | Tyre pressure           | 2        |
  | Windows and roof racks  | 3        |
  | Idling                  | 4        |
  | Air conditioning        | 5        |
  | Weight                  | 6        |
  | Gears                   | 7        |
  | Speed and acceleration  | 8        |
  | Traffic flow            | 9        |
  | Car share               | 10       |
