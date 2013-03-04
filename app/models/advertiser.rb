class Advertiser < ActiveRecord::Base
  attr_accessible :email,:password, :password_digest
  has_secure_password
  validates_presence_of :password, :on=>:create
 
end
