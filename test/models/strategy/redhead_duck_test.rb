require_relative '../../test_helper'

module Strategy
  class RedHeadDuckTest < Test::Unit::TestCase
    context 'a redhead duck' do
      setup do
        @duck = RedheadDuck.new
      end

      should '#display like a redhead' do
        assert_equal 'Ginger, FTL', @duck.display
      end
    end
  end
end
