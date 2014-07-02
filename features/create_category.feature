Feature: Create Category
As a blog administrator
I want to be able to add categories to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully write articles
    Given I am on the new category page
    When I fill in "category_name" with "Foobar"
    And I press "Save"
    Then I should be on the new category page
    And I should see "Foobar"
    And I should see "Category was sccessfully saved."
