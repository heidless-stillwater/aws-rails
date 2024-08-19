# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = [
  { email: 'lockhart.r@gmail.com', first_name: 'rob', last_name: 'sysadmin', admin: true, bio: 'Hey!' },
  { email: 'lockhartarts.co.uk@domainsbyproxy.com', first_name: 'admin', last_name: 'sysadmin', admin: true, bio: 'Hey!' },
  { email: 'rob@test.com', first_name: 'rob', last_name: 'sysadmin', admin: true, bio: 'Hey!' },
  { email: 'bear@test.com', first_name: 'bear', last_name: 'woods', admin: false, bio: 'Hey!' },  

]

users.each do |user|
  this_user = User.where(
    email: user[:email],
  ).first_or_initialize

  this_user.update!(
    first_name: user[:first_name],
    last_name: user[:last_name],
    admin: user[:admin],
    bio: user[:bio],
    password: SecureRandom.uuid,
  )
  this_user.save
end
