module ApplicationHelper
  def avatar(user, attrs = {})
    if user.photo != nil
      cl_image_tag(user.photo.path, attrs)
    else
      image_tag("http://placehold.it/50/50", attrs)
    end
  end
end
