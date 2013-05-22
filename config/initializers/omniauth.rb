OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  #provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET']
  FB_KEY    = ENV['FACEBOOK_KEY']
  FB_SECRET = ENV['FACEBOOK_SECRET']
  provider :facebook, FB_KEY, FB_SECRET
  #:scope => 'email,user_location', :display => 'popup'
end
