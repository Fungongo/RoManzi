class Novel < ActiveRecord::Base
  attr_accessible :user_id, :title, :author, :cover, :description, :editor, :isbn, :num_pages, :year
  
  validates :title, :author, :description, :presence => true, :length => { :minimum => 3 }
  validates :year, :numericality => { :only_integer => true, :less_than_or_equal_to => Time.now.year,
  										:greater_than => 0 }
  validates :num_pages, :numericality => { :only_integer => true, :greater_than => 0 }
end
