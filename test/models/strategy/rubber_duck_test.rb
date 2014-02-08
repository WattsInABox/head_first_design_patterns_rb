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
        assert_equal 'rubber duckie squeak', @duck.quack
      end

      should 'not #fly' do
        assert_equal 'I can\'t fly', @duck.fly
      end
    end
  end
end
