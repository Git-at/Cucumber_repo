@all
Feature: Login to magento
  @admin
  Scenario: I'll be able to create a product with existing name
    Given I open "http://magento.loc/admin/admin" url
    Then Page title should be "Magento Admin"
    When I fill "admin" in "User name" field
    When I fill "ani236532691" in "User password" field
    When I click "Submit" 
    Then Page title should be "Dashboard / Magento Admin"
    And I wait "2" seconds
    When I click "catalog" 
    And I wait "2" seconds
    When I click "products" 
    And I wait "2" seconds
    When I click "addProduct" 
    And I wait "4" seconds
    When I fill "existindProductNem" in "productName" field
    And I wait "2" seconds
    When I fill "100" in "productPrice" field
    And I wait "2" seconds
    When I click "save" 
    And I wait "10" seconds
    And Text of "message" should contain "exists"

  @page 
  Scenario Outline: I should be able to access <>
    Given I open "<URL>" url
    Then Page title should be "<Title>"
  Examples:
  | URL                                    | Title                                    |
  | http://magento.loc/admin/admin         | Magento Admin                            |     
  | http://magento.loc                     | Home page                                |