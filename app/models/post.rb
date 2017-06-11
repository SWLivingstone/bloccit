class Post < ActiveRecord::Base
  has_many :comments

  self.all.each do |post|
    if (post.id - 1) % 5 == 0
      post.update!(
        title: "SPAM"
      )
    end
    self.first.update(
      title: "SPAM"
    )
  end
end
