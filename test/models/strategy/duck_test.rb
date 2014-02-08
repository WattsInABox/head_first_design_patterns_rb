require_relative '../test_helper'

module Strategy
  class DuckTest < Test::Unit::TestCase
    context 'a duck' do
      setup do
        @duck = Duck.new
      end

      should '#swim' do
        assert_equal 'Just keep swimming', @duck.swim
      end

      should '#display' do
        assert_equal 'Pretend this is a duck picture', @duck.display
      end

      should '#quack' do
        assert_equal 'Uh... quack?', @duck.quack
      end
    end
  end
end
