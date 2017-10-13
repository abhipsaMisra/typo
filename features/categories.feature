Feature: Add or Edit Categories
  As a blog administrator
  
  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully access Categories
    Given I am on the categories page
    Then I should see "Description"
    
  Scenario: Successfully add a new Category
    Given I am on the categories page
    When I fill in "category_name" with "Test Category Name"
    And I fill in "category_keywords" with "Category Keywords"
    And I fill in "category_description" with "Category Description"
    And I press "Save"
    Then I should be on the categories page
    And I should see "Test Category Name"
    And I should see "Category Keywords"
    And I should see "Category Description"
