require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    # validation tests/examples here
    it "It is Valid " do
      Gym = Category.create 
      shirt = Gym.products.create({
          name:  'Men\'s Gym shirt',
          description: 'Athletic Basketball',
          quantity: 17,
          price: 100
        })
    expect(shirt).to be_valid
    end
    it "It is a Valid Category " do
      Gym = Category.create 
      shirt = Gym.products.create({
          name:  'Men\'s Gym shirt',
          description: 'Athletic Basketball',
          quantity: 17,
          price: 100
        }) 
        shirt.category =nil
    expect(shirt).to_not be_valid
    end

    it "It has a Valid Name" do
      Gym = Category.create 
      shirt = Gym.products.create({
          name:  nil,
          description: 'Athletic Basketball',
          quantity: 17,
          price: 100
        })
    expect(shirt).to_not be_valid
    end

    it "It has a Price Name" do
      Gym = Category.create 
      shirt = Gym.products.create({
          name:  'Men\'s Gym shirt',
          description: 'Athletic Basketball',
          quantity: 17,
          price: nil
        })
    expect(shirt).to_not be_valid
    end

    it "It has a Valid Quantity " do
      Gym = Category.create 
      shirt = Gym.products.create({
          name:  'Men\'s Gym shirt',
          description: 'Athletic Basketball',
          quantity: nil,
          price: 100
        })
    expect(shirt).to_not be_valid
    end
  end
end