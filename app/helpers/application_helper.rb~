module ApplicationHelper
  def link_to_user(user)
    link_to user.to_s, "/users/#{user.id}"
  end
  
  def link_to_user(user_id)
    user =  User.find (user_id)
    link_to user.to_s, "/users/#{user_id}"
  end
  
  def link_to_author(author)
  	link_to author, "author/#{author}"
  end
end
