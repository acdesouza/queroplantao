OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  #provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET']
  FB_KEY    = '492391947466622'
  FB_SECRET = '39d5f5c47777c18462944d3c5abe004b'
  provider :facebook, FB_KEY, FB_SECRET
  #:scope => 'email,user_location', :display => 'popup'
end
