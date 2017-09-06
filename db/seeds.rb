# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
def hanbetu(num)
  if (num % 2 === 0)
    true
  else
    false
  end
end

5.times do |no|
  User.create(:name => "User#{no}", :teacher_flg => hanbetu(no))
end
