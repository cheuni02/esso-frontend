@all_essodayout_tests @end_to_end
Feature: On the Esso Days Out page, make sure the user can
  1) navigate to the essoday out activity page
  2) add activities
  3) fill in form and submit

  Background: Navigating to the EssoDayOut Activities page
    Given That I'm on the UK Esso days Out page
    When I click on the 'Create your #EssoDayOut' button

  @adding_first_activity
  Scenario: Adding first activity to the box 1
    And i have selected activity - 'Indoor skiing'
    When clicked 'Add to my day'
    Then the activity - 'Indoor skiing' will appear on box number - 1

  @adding_second_activity
  Scenario: Adding second activity to the box 2
    Given i have already selected an activity - 'Indoor skiing'
    When I select second activity - 'Afternoon tea'
    Then the activity - 'Afternoon tea' will now appear on box number - 2

  @adding_third_activity
  Scenario: Adding third activity to the box 3
    Given i have already selected 2 activities - 'Indoor skiing', 'Afternoon tea'
    When I select third activity - 'Circus'
    Then the activity - 'Circus' will finally appear on box number - 3

  @submitting_form
  Scenario Outline: Submitting user's #EssoDayOut
    When i have selected 3 activities - <activity1>, <activity2>, <activity3>
    And i type in these details: First Name - <firstname>, Last Name - <lastname>, Email - <email>
    And ticked the two Ts&Cs checkboxes
    And pressed 'Enter competition'
    Then The Thank you page should show with user's name - '<firstname>'

  Examples:
  | activity1        | activity2      | activity3        | firstname | lastname   | email                       |
  | Palace visit     | Cave exploring | Boat trip        | Ivan      | Cheung     | ivan.cheung@tribalddb.co.uk |
  | Forest adventure | Waterpark      | Classic pub meal | Gowtham   | Selvarajah | gowtham2Sazia@gmail.com     |
