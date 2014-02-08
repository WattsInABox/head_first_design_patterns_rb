require_relative '../test_helper'

module Strategy
  class MallardDuckTest < Test::Unit::TestCase
    context 'a mallard' do
      setup do
        @duck = MallardDuck.new
      end

      should '#display like a mallard' do
        assert_equal 'I looka like a mallard', @duck.display
      end
    end
  end
end
