Feature: Product Registration
    As a user
    I should be able to
    Manage my market inventory

@test
Scenario: Register a product
    Given I am registering a product in inventory
    When i enter a valid product information
    Then the product will be registered successfully

Scenario: Edit a product
    Given I already registered a product
    When I edit this product information
    Then The product will be edited successfully

Scenario: Delete a product
    Given I have a product in inventory
    When I delete this product
    Then The product will be deleted successfully

Scenario Outline: Decrease product amount
    Given I have a product amount in inventory
    When Decrease this product amount "<amount>"
    Then Product amount will be decreased "<newValue>" successfully


Examples:
    | amount | newValue |
    | 3  | 2.0 |
    | 2  | 3.0 |
    | 4  | 1.0 |