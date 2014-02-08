require_relative '../test_helper'

module Strategy
  class DecoyDuckTest < Test::Unit::TestCase
    context 'a decoy' do
      setup do
        @duck = DecoyDuck.new
      end

      should '#display like a decoy' do
        assert_equal 'I look like a duck but really I am just a piece of plastic... explosive', @duck.display
      end

      should "not #quack" do
        assert_equal '', @duck.quack, 'Decoys should not quack'
      end

      should "not #fly" do
        assert_equal '', @duck.fly, 'Decoys should not fly'
      end
    end
  end
end
