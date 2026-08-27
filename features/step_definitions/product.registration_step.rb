Given('I am registering a product in inventory') do
   home.add_product
  end

When('i enter a valid product information') do
  product = DATABASE[:new_product]

  registration.register_product(
    product[:code],
    product[:description],
    product[:packing],
    product[:amount],
    product[:unitValue],
    product[:lot]
  )
    end

Then('the product will be registered successfully') do
  assert.check_registration
end

Given('I already registered a product') do
  home.add_product
  product = DATABASE[:new_product]
  registration.register_product(
    product[:code],
    product[:description],
    product[:packing],
    product[:amount],
    product[:unitValue],
    product[:lot]
  )
end

When('I edit this product information') do
home.edit_product
product = DATABASE[:edit_product]
registration.register_product(
    product[:code],
    product[:description],
    product[:packing],
    product[:amount],
    product[:unitValue],
    product[:lot]
  )
end

Then('The product will be edited successfully') do
assert.check_edition
end

Given('I have a product in inventory') do
  home.add_product
  product = DATABASE[:edit_product]
    registration.register_product(
    product[:code],
    product[:description],
    product[:packing],
    product[:amount],
    product[:unitValue],
    product[:lot]
  )
end

When('I delete this product') do
  home.delete_product
end

Then('The product will be deleted successfully') do
assert.check_deletion
end

Given('I have a product amount in inventory') do
  home.add_product
  product = DATABASE[:new_product]
     registration.register_product(
    product[:code],
    product[:description],
    product[:packing],
    product[:amount],
    product[:unitValue],
    product[:lot]
  )
end

When('Decrease this product amount {string}' ) do |string|
home.decrease_product
registration.decrease_product(string)
end

Then('Product amount will be decreased {string} successfully') do |string|
assert.check_decrease(string)
end
