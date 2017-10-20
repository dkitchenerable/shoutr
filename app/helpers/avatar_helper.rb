module AvatarHelper
  def avatar(user)
    email_digest = Digest::MD5.hexdigest(user.email)
    image_tag "//s.gravatar.com/avatar/#{email_digest}?s=80"
  end
end
