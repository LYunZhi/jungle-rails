require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it "is valid with valid attributes" do
      category = Category.new(name: 'Random')
      new_product = category.products.new(name: 'Something', price: 100, quantity: 3)
      expect(new_product).to be_valid
    end

    it "is not valid without a name" do
      category = Category.new(name: 'Random')
      new_product = category.products.new(name: nil, price: 100, quantity: 3)
      expect(new_product).to be_invalid
    end

    it "is not valid without a price" do
      category = Category.new(name: 'Random')
      new_product = category.products.new(name: 'Something', price: nil, quantity: 3)
      expect(new_product).to be_invalid
    end
    it "is not valid without a quantity" do
      category = Category.new(name: 'Random')
      new_product = category.products.new(name: nil, price: 100, quantity: nil)
      expect(new_product).to be_invalid
    end
    it "is not valid without a category" do
      product = Product.new(name: 'Something', price: 1000, quantity: 10)
      expect(product).to be_invalid
    end
    # validation tests/examples here
  end
end
