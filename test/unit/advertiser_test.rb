require 'test_helper'

class AdvertiserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'should not create a Advertiser without a password' do
    advertiser = Advertiser.new email: 'ac.desouza@gmail.com'

    refute advertiser.save
    assert advertiser.errors.include? :password_digest
  end
end
