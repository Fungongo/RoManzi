class Comment < ActiveRecord::Base
  attr_accessible :user_id, :comment, :novel_id, :valutation
  
  belongs_to :user
  belongs_to :novel
end
