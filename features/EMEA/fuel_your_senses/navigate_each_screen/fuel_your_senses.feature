Feature: Navigating through each Esso #FuelYourSenses screen
  As a visitor to the esso websites interested about how Esso fuels are catered for every need e.g. McLaren Formula 1
  We need to check that this FuelYourSenses section of the Esso site provides all that  information
  In this case we are checking that user can scroll down each screen with the arrows, or the navigation dots

  Background:
    Given I am currently on FYS screen - 1 - '#FuelYourSenses'


  Scenario Outline: Navigating through the screens via downward chevron button
    When I am currently on the <current_screen> screen
    And I press the downward chevron button on the bottom right hand side
    Then I should arrive to the <next_screen> screen

  Examples:
    | current_screen | next_screen |
    | hero_screen    | 2nd_screen  |
    | 2nd_screen     | 3rd_screen  |
    | 3rd_screen     | 4th_screen  |
    | 4th_screen     | 5th_screen  |
    | 5th_screen     | 6th_screen  |
    | 6th_screen     | footer      |


  Scenario Outline: Navigating through the screens via navigation dots
    When I click on navigation dot # <dot_no>
    Then I should arrive to the <next_screen> screen

    Examples:
      | dot_no | next_screen  |
      | 1      | hero_screen  |
      | 2      | 2nd_screen   |
      | 3      | 3rd_screen   |
      | 4      | 4th_screen   |
      | 5      | 5th_screen   |
      | 6      | 6th_screen   |

