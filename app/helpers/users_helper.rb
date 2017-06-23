module UsersHelper
  def has_created_post?
    current_user.posts.first
  end

  def has_made_comment?
    current_user.comments.first
  end

  def has_favorite_posts?
    current_user.favorites.first
  end
end
