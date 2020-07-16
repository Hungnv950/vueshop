# == Schema Information
#
# Table name: products
#
#  id             :bigint           not null, primary key
#  before_price   :integer
#  count          :integer
#  description    :string(255)
#  guarantee_date :date
#  is_hot         :boolean
#  price          :integer
#  title          :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Product < ApplicationRecord
  def self.generate
    100.times do |i|
      Product.create title: Faker::Name.name, description: Faker::Lorem.paragraph_by_chars, price: Faker::Number.number(digits: 10),
        before_price: Faker::Number.number(digits: 10), count: Faker::Number.number(digits: 5)
    end
  end
end
