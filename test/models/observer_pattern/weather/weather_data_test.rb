require_relative '../../../test_helper'
require_relative '../../../../lib/head_first_design_patterns_rb/observer_pattern/weather'

module ObserverPattern
  module Weather
    class WeatherDataTest < Test::Unit::TestCase
      setup do
        @weather_data = WeatherData.new
      end

      context "#set_measurements" do
        should "set temperature, humidity, and pressure" do
          @weather_data.set_measurements(60, 50, 40)

          assert_equal 60, @weather_data.temperature
          assert_equal 50, @weather_data.humidity
          assert_equal 40, @weather_data.pressure
        end
      end

      context "#register_observer" do
        should "add an observer" do
          observer = 5

          @weather_data.register_observer(observer)

          assert_equal [observer], @weather_data.observers
        end
      end

      context "#remove_observer" do
        should "remove an observer" do
          observer = 5
          @weather_data.observers = [observer]

          @weather_data.remove_observer(observer)

          assert_equal [], @weather_data.observers
        end
      end

      context "#notify_observers" do
        should "#update all observers" do
          @observer = mock('observer') do
            expects(:update)
          end

          @observer2 = mock('observer2') do
            expects(:update)
          end

          @weather_data.observers = [@observer, @observer2]

          @weather_data.notify_observers
        end
      end
    end
  end
end
