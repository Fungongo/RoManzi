class Novel < ActiveRecord::Base
  attr_accessible :title, :author, :cover, :description, :editor, :isbn, :num_pages, :year
end
