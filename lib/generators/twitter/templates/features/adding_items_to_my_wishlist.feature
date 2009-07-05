Feature: Viewing my wish list
  In order to display a users' preferences
  As a twitter user

  Background:
    Given I am logged in
    And I have created a "53cm Pistas" category

  Scenario: Posting to an existing category
    When I post "Bianchi Pista Size 53cm Medium - $500 (Downtown Denver)" with a url of "http://denver.craigslist.org/bik/1195971789.html" to the "53cm Pistas" category
    And I visit the "53cm Pistas" page
    Then I should see the "Bianchi Pista Size 53cm Medium - $500 (Downtown Denver)" in the list
    And the url should be set to "http://denver.craigslist.org/bik/1195971789.html"

  Scenario: Posting to a new category
    When I post "Bianchi Pista Size 54cm Medium - $500 (Downtown Denver)" with a url of "http://denver.craigslist.org/bik/1195971789.html" to the "54cm Pistas" category
    And I visit the "54cm Pistas" page
    Then I should see the "Bianchi Pista Size 54cm Medium - $500 (Downtown Denver)" in the list
    And the url should be set to "http://denver.craigslist.org/bik/1195971789.html"
