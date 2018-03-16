# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

2.times do |i|
  user = User.new(email: "admin#{i + 1}@laboratoriaAdmin.la",
                  password: '12345678', # Devise.friendly_token[0,20]
                  password_confirmation: '12345678')

  user.profile = Admin.new(username: "admin#{i + 1}")
  user.save
end

2.times do |i|
  user = User.new(email: "customer#{i + 1}@laboratoriaCustomer.la",
                  password: '12345678', # Devise.friendly_token[0,20]
                  password_confirmation: '12345678')

  user.profile = Customer.new(username: "customer#{i + 1}")
  user.save
end
