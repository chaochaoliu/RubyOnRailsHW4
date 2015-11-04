# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
3.times do
user = User.create(email: Faker::Internet.email, 
	password: Faker::Internet.password(6,100))
end

12.times do
post = Post.create(title: Faker::Lorem.word, 
content: Faker::Lorem.sentence)
end

4.times do
tag = Tag.create(name: Faker::Lorem.word)
end

3.times do
user_info = UserInfo.create(firstname: Faker::Name.first_name,
	lastname: Faker::Name.last_name,
	profile: Faker::Lorem.paragraph
	# user_id: Faker::Number.digit)
end

2.times do
user_role = UserRole.create(name: Faker::Lorem.word)
end

3.times do
category = Category.create(name: Faker::Lorem.word,
	post_count: Faker::Number.digit)
end