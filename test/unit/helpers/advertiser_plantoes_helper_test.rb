require 'test_helper'

class AdvertiserPlantoesHelperTest < ActionView::TestCase
  test 'should group by when and how long' do
    viva_rio = advertisers(:viva_rio)
    plantoes = viva_rio.plantoes

    expected_hash = {
      Date.today.to_formatted_s(:rfc822) => {
        '12h' => [plantoes[0]],
        '24h' => []
      }
    }

    #Debug - puts "\n>>>>>>>>>>>>>\n#{plantoes}\n#{expected_hash}\n#{group_by_when_and_how_long(plantoes)}>>>>>>>>>>>>>>>"

    assert expected_hash == group_by_when_and_how_long(plantoes)
  end
end
#Resultado: --------------------
#  {
#    12-03-2013 =>
#    {
#      12h => {p1, p2, p7},
#      24h => {p3, p4, p5, p6}
#    }
#    13-03-2013 =>
#    {
#      12h => {},
#      24h => {p8}
#    }
#  }
#------------------------------
