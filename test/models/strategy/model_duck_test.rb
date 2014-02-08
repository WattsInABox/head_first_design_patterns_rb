require_relative '../test_helper'

module Strategy
  class ModelDuckTest < Test::Unit::TestCase
    context 'a model of a duck' do
      setup do
        @duck = ModelDuck.new
      end

      should '#display like a model' do
        assert_equal 'I am mostly plastic and NOT explosive', @duck.display
      end

      # note that this works out of the box and requires no extra code since we have an attr_accessor
      should "gain flight later on" do
        assert_equal 'I can\'t fly', @duck.fly

        @duck.fly_behavior = FlyRocketPowered.new

        assert_equal 'I got a rocket strapped to my back and I am flying, baby!', @duck.fly
      end
    end
  end
end
