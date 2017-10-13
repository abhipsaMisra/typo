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
    
  Scenario: Successfully edit a Category
    Given I am on the categories page
    When I fill in "category_name" with "Test Category Name"
    And I fill in "category_keywords" with "Category Keywords"
    And I fill in "category_description" with "Category Description"
    And I press "Save"
    Then I should be on the categories page
    And I should see "Test Category Name"
    When I follow "Test Category Name"
    Then I should see "Category Keywords"
    When I fill in "category_name" with "Test Category edited"
    And I fill in "category_keywords" with "Keywords-edited"
    And I fill in "category_description" with "Description-edited"
    And I press "Save"
    Then I should be on the categories page
    And I should not see "Test Category Name"
    And I should not see "Category Keywords"
    And I should not see "Category Description"
    And I should see "Test Category edited"
    And I should see "Keywords-edited"
    And I should see "Description-edited"
    
  Scenario: Category should not be created if we click on cancel
    Given I am on the categories page
    When I fill in "category_name" with "Test Category Name"
    And I fill in "category_keywords" with "Category Keywords"
    And I fill in "category_description" with "Category Description"
    And I follow "Cancel"
    Then I should be on the categories page
    And I should not see "Test Category Name"
    And I should not see "Category Keywords"
    And I should not see "Category Description"

  Scenario: Category should not be edited if we click on cancel on Edit Category
    Given I am on the categories page
    When I fill in "category_name" with "Test Category Name"
    And I fill in "category_keywords" with "Category Keywords"
    And I fill in "category_description" with "Category Description"
    And I press "Save"
    Then I should be on the categories page
    And I should see "Test Category Name"
    When I follow "Test Category Name"
    Then I should see "Category Keywords"
    When I fill in "category_name" with "Test Category edited"
    And I fill in "category_keywords" with "Keywords-edited"
    And I fill in "category_description" with "Description-edited"
    And I follow "Cancel"
    Then I should be on the categories page
    And I should see "Test Category Name"
    And I should see "Category Keywords"
    And I should see "Category Description"
    And I should not see "Test Category edited"
    And I should not see "Keywords-edited"
    And I should not see "Description-edited"
