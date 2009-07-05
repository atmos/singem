Feature: Viewing my wish list
  In order to display a users' preferences
  As a twitter user

  Background:
    Given I am logged in
    And I have created a "53cm Pistas" category

  Scenario: After Authenticating
    When I visit the home page
    Then I should see my list of categories
    When I enter "Prostitutes" for a new category
    And I click submit
    Then I should see the "Prostitutes" list
