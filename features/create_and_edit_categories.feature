Feature: Create Categories
  As a blog administrator
  In order to share my thoughts with the world
  I want to be able to create categories to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    
    Scenario: Successfully create categories
    Given I am on the new categories page
    When I fill in "category_name" with "Foobar"
    And I fill in "category_keywords" with "Lorem Ipsum"
    And I fill in "category_permalink" with "BS"
    And I fill in "category_description" with "descrip"
    And I press "Save"
    Then I should see "Foobar"
    Then I should see "Lorem Ipsum"
    Then I should see "BS"
    Then I should see "descrip"

    Then I follow "Foobar"
    
    When I fill in "category_name" with "Foobar2"
    And I fill in "category_keywords" with "Lorem Ipsum2"
    And I fill in "category_permalink" with "BS2"
    And I fill in "category_description" with "descrip2"
    And I press "Save"
    Then I should see "Foobar2"
    Then I should see "Lorem Ipsum2"
    Then I should see "BS2"
    Then I should see "descrip2"
