Feature: Merge Articles
  As a blog administrator
  In order to combine to articles
  I want to be able to merge two articles

  Background:
    Given the blog is set up

  Scenario: Successfully merge articles
    Given I have the following articles:
    | id | title       | body            |
    | 2  | Article1 | Article1 text |
    | 3  | Article2 | Article2 text |
    And I visit the edit article page for "Aticle1"
    When I fill in "merge_with" with "3"
    And I press "Merge"
    Then "Article1" should have body "Article1 text Article2 text"
    And "Article1" should have title "Article1" or "Article2"
    And the comments should be carried over

  Scenario: A non-admin cannot merge two articles
    Given I am logged in as a non-admin user
    And I have the following articles:
    | id | title       | body            |
    | 2  | Article1 | Article1 text |
    | 3  | Article2 | Article2 text |
    When I visit the edit article page for "Aticle1"
    Then I should not see "Merge"
