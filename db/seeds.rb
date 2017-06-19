# Create Users
5.times do
  User.create!(
    name: "#{RandomData.random_word} #{RandomData.random_word}",
    email: "#{RandomData.random_word}@#{RandomData.random_word}.com",
    password: "password"
  )
end


# Create Topics
15.times do
  Topic.create!(
    name:         RandomData.random_sentence,
    description:  RandomData.random_paragraph
  )
end
topics = Topic.all
users = User.all

# Create Posts
50.times do
  post = Post.create!(
    topic:  topics.sample,
    title:  RandomData.random_sentence,
    body:   RandomData.random_paragraph,
    user: users.sample
  )
  post.update_attribute(:created_at, rand(10.minutes .. 1.year).ago)
  rand(1..5).times { post.votes.create!(value: [-1,1].sample, user: users.sample)}
end
posts = Post.all

# Create Comments
100.times do
  Comment.create!(
    user: users.sample,
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end


# Create a admin user
admin = User.create!(
  name:     'Admin User',
  email:    'admin@example.com',
  password: 'helloworld',
  role:     'admin'
)

# Create a member
member = User.create!(
  name:     'Member User',
  email:    'member@example.com',
  password: 'helloworld'
)

moderator = User.create!(
  name:     'moderator user',
  email:    'moderator@example.com',
  password: 'helloworld',
  role:     'moderator'
)

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Topic.count} topics created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
puts "#{Vote.count} votes created"
