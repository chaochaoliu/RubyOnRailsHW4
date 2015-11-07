# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
UserRole.create(name: 'admin')
UserRole.create(name: 'guest')

Tag.create(name: 'iphone6s')
Tag.create(name: 'Mac')
Tag.create(name: 'NBA')
Tag.create(name: 'credit card')
Tag.create(name: 'amazon')
Tag.create(name: 'football')
Tag.create(name: 'ruby')
Tag.create(name: 'swimming')

Category.create(name: 'technology')
Category.create(name: 'business')
Category.create(name: 'sports')




user = User.create(email: Faker::Internet.email,password: Faker::Internet.password(6,100),user_role: UserRole.find_by(name: 'admin'))
user_info = UserInfo.create(firstname: Faker::Name.first_name,lastname: Faker::Name.last_name,profile: Faker::Lorem.paragraph)
user.user_info = user_info

user = User.create(email: Faker::Internet.email,password: Faker::Internet.password(6,100),user_role: UserRole.find_by(name: 'guest'))
user_info = UserInfo.create(firstname: Faker::Name.first_name,lastname: Faker::Name.last_name,profile: Faker::Lorem.paragraph)
user.user_info = user_info 

user = User.create(email: Faker::Internet.email,password: Faker::Internet.password(6,100),user_role: UserRole.find_by(name: 'guest'))
user_info = UserInfo.create(firstname: Faker::Name.first_name,lastname: Faker::Name.last_name,profile: Faker::Lorem.paragraph)
user.user_info = user_info 

  post = Post.create(title: Faker::Lorem.word, 
    content: Faker::Lorem.sentence,
    user: User.find(1),
    category_id: Category.find_by(name: 'technology').id
    )
  post.tags << Tag.find_by(name: 'iphone6s')
  post.tags << Tag.find_by(name: 'Mac')
  post.tags << Tag.find_by(name: 'ruby')

  post = Post.create(title: Faker::Lorem.word, 
    content: Faker::Lorem.sentence,
    user: User.find(2),
    category_id: Category.find_by(name: 'sports').id
    )
  post.tags << Tag.find_by(name: 'NBA')
  post.tags << Tag.find_by(name: 'swimming')

  post = Post.create(title: Faker::Lorem.word, 
    content: Faker::Lorem.sentence,
    user: User.find(2),
    category_id: Category.find_by(name: 'sports').id
    )

  post.tags << Tag.find_by(name: 'football')
  post.tags << Tag.find_by(name: 'swimming')

  post = Post.create(title: Faker::Lorem.word, 
    content: Faker::Lorem.sentence,
    user: User.find(3),
    category_id: Category.find_by(name: 'business').id
    )
  post.tags << Tag.find_by(name: 'credit card')
  post.tags << Tag.find_by(name: 'amazon')

