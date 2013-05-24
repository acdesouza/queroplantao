ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  fixtures :all

  # Add more helper methods to be used by all tests here...
  def sign_in(this_user = users(:ac))
    session[:user_id] = this_user.id
  end

  def add_facebook_login_on_request(request_env)
    auth_hash = OmniAuth::AuthHash.new
    auth_hash.regular_writer('provider', 'facebook')
    auth_hash.regular_writer('uid', '123456789')

    auth_info_hash = OmniAuth::AuthHash.new
    auth_info_hash.regular_writer('name', 'Antonio Carlos de Souza')
    auth_hash.regular_writer('info', auth_info_hash)

    auth_credentials_hash = OmniAuth::AuthHash.new
    auth_credentials_hash.regular_writer('token', 'a1b2c3')
    auth_credentials_hash.regular_writer('expires_at', 1374446842)
    auth_hash.regular_writer('credentials', auth_credentials_hash)
    request_env['omniauth.auth'] = auth_hash
  end
end
