class User < ActiveRecord::Base

  attr_accessible :name, :birth_date, :email, :nickname, :password, :surname, :is_admin
  
  validates :name, :surname, :nickname, :presence => true, :length => { :minimum => 3 }
  validates :email, :format => /@/
  validates :password, :presence => true, :confirmation => true, :on => "create"
  
  def to_s
    "@#{nickname}"
  end
end
