module UsersHelper
  def image_for(user)
    if user.image
      image_tag "public/user_images/#{user.image}", class: "profile_img"
    else
      image_tag "rails.png", class: "profile_img"
    end
  end
end
