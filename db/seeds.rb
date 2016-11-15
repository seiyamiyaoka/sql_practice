# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
CNT = 100
PRICE = %w(100 200 400 500)
HEIGHT = %w(1.5 1.7 1.9 2.0)
WEIGHT = %w(50 55 60 70 80 90 100)
PRICE.map!(&:to_i)
CNT.times do
  user = User.new(
          name: Faker::Name.name
  )
  user.save!
  product = Product.new(
            name: Faker::Book.title,
            price: PRICE.sample(1).first
  )
  product.save!
  employee = Employee.new(
            name: Faker::Name.name,
            height: HEIGHT.sample(1).first,
            weight: WEIGHT.sample(1).first
  )
  employee.save!
end
