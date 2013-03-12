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

  test 'should retieve Advertiser\`s plantoes' do
    advertiser = advertisers(:viva_rio)
    plantoes = advertiser.plantoes

    refute plantoes.empty?
    plantoes.each do |plantao|
      assert advertiser == plantao.advertiser
    end
  end
end
