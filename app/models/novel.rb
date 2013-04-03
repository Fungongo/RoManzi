class Novel < ActiveRecord::Base
  attr_accessible :user_id, :title, :author, :cover, :description, :editor, :isbn, :num_pages, :year
  
  validates :title, :author, :description, :presence => true, :length => { :minimum => 3 }
  validates :year, :numericality => { :only_integer => true, :less_than_or_equal_to => Time.now.year,
  										:greater_than => 0 }
  validates :num_pages, :allow_blank => true, :numericality => { :only_integer => true, :greater_than => 0 }
  
  belongs_to :user
  
  has_many :comments
  
  def self.search(search)
	  if search  
	    find(:all, :conditions => ['title LIKE ?', "%#{search}%"])  
	  else  
	    find(:all)  
	  end  
  end
  
  def get_comments
  	  return Comment.where(["novel_id = ?", id]).order("created_at desc")
  end
  
end
