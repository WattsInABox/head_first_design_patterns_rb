require_relative '../test_helper'

module Strategy
  class RubberDuckTest < Test::Unit::TestCase
    context 'a rubber duck' do
      setup do
        @duck = RubberDuck.new
      end

      should '#display like a rubber duck' do
        assert_equal 'I am yellow and rubbery', @duck.display
      end

      should '#quack (squeak) like a rubber duck' do
        assert_equal 'If you squeeze me, I will squeak instead of quack', @duck.quack
      end
    end
  end
end
