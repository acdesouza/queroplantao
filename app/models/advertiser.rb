class Advertiser < ActiveRecord::Base
  attr_accessible :email,:password, :password_confirmation
  has_secure_password

  has_many :plantoes
end
