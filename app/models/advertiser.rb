class Advertiser < ActiveRecord::Base
  attr_accessible :email,:password, :password_confirmation,  :password_digest
  has_secure_password
end
