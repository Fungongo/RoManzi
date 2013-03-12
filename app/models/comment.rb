class Comment < ActiveRecord::Base
  attr_accessible :user_id, :comment, :novel_id, :valutation
end
