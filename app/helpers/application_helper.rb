module ApplicationHelper

  def user_pict(user)
    if user.picture.exists?
      user.picture
    else
      "placeholder.png"
    end
  end

end
