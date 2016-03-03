@all_essodayout_tests @checking_popup
Feature: On the Esso Days Out page, make sure the user can
  1) navigate to the essoday out activity page
  2) add activities
  3) fill in form and submit

  Background: Navigate to the Esso Days out page
    Given That I'm on the EssoDayOut activities page

  Scenario Outline: Once activity is clicked there will be a description of the activity
    When I click on a displayed activity - <activity>
    Then a popup should show which describes the activity - <activity>

  Examples:
  | activity      |
  | Palace visit  |
  | Safari park   |
  | Paintball     |
  | Balloon flight|
