class Address < ActiveRecord::Base
  validates :email, :name,:phone, :presence=>true, :uniqueness=>true

  
end
