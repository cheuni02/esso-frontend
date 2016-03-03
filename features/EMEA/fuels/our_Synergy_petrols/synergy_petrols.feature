
Feature: Synergy Petrols Fuels page
  As a visitor to the esso websites interested in details about Synergy Petrols fuels
  We need to check that all the relevent details are displayed on these pages
  And that other visitors can access the pages through the top navigation

  Background: Visiting the Synergy Petrols Fuels page
    Given i visit the 'Synergy Petrols fuels' page on the esso website via the top level navigation via 'fuels'

  @esso-uk @esso-be @esso-lu @esso-nl
  Scenario: Synergy Petrols Fuels Hero module
    When i examine the main top level module on the page
    Then i should see a module containing a header
    And there should also be copy inside the hero module on the page

  @esso-uk @esso-be @esso-lu
  Scenario: 'Now get more from your journeys' Module
    When i examine module #2 on the fuels page in my browser
    Then i should see content along with an image displayed on module #2

  @esso-uk @esso-be @esso-lu
  Scenario: 'Revitalise your engine with Esso Synergy Supreme+ Unleaded Petrol' Module
    When i examine module #3 on the fuels page in my browser
    Then i should see content along with an image displayed on module #3

  @esso-uk @esso-be @esso-lu  @esso-no
  Scenario: 'Why choose Esso Synergy Supreme+ Unleaded?'
    When i examine module #4 on the fuels page in my browser
    Then there should be copies with titles: 'A deeper clean' and 'Better performance'
    And a link to the video 'How our Petrol works' with a small thumbnail on this module of the SP page
