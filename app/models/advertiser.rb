class Advertiser < ActiveRecord::Base
  attr_accessible :email, :password, :password_digest
  has_secure_password
end
