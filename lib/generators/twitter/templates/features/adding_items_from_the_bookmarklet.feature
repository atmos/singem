Feature: Viewing my wish list
  In order to display a users' preferences
  As a twitter user

  Background:
    Given I am logged in
    And I have created a "53cm Pistas" category
    And I have created a "54cm Cyclocross" category

  Scenario: After Authenticating
    When I visit the bookmarklet page
    And I set the category to "53cm Pistas"
    And the "description" is set to "Bianchi Pista Size 53cm Medium - $500 (Downtown Denver)"
    And the "url" is set to "http://denver.craigslist.org/bik/1195971789.html" 
    When I click submit
    Then I should see the window close
