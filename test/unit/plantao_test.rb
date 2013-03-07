require 'test_helper'

class PlantaoTest < ActiveSupport::TestCase
  setup do
    @plantao = plantoes(:one)
    @remuneration = remunerations(:one)
  end
  test "should fill With remuneration" do
      @plantao.fill_with_remuneration(@remuneration)
      assert_equal @plantao.how_much, @remuneration.how_much   
      assert_equal @plantao.how_long, @remuneration.how_long
  end
end
