module UserHelper
  def follow_button(user)
    if current_user.following?(user)
      button_to "UnFollow", unfollow_user_path(user), method: :delete
    else
      button_to "Follow", follow_user_path(user), method: :post
    end
  end
end
