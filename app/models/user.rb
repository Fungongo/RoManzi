class User < ActiveRecord::Base
  attr_accessible :name, :birth_date, :email, :nickname, :password, :surname, :is_admin
end
