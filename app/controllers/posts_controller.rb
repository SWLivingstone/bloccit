class PostsController < ApplicationController
  def index
    @posts = Post.all
    @posts.first.update(
      title: "SPAM"
    )
    @posts.each do |post|
      if (post.id - 1) % 5 == 0
        post.update(
          title: "SPAM"
        )
      end
    end
  end

  def show
  end

  def new
  end

  def edit
  end
end
