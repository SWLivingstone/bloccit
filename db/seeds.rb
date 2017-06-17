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
  Post.create!(
    topic:  topics.sample,
    title:  RandomData.random_sentence,
    body:   RandomData.random_paragraph,
    user: users.sample
  )
end
posts = Post.all

# Create Comments
100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

user = User.first
user.update_attributes!(
  name: 'Scott',
  email: 'scottwlivingstone@gmail.com',
  password: 'password'
)

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Topic.count} topics created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
