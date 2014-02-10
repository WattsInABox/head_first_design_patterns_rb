require_relative '../test_helper'
require_relative '../../lib/head_first_design_patterns_rb/observer_pattern/weather'

module ObserverPattern
  module Weather
    # integration test
    class WeatherDataTest < Test::Unit::TestCase
      context "a weather data object that receives new data" do
        should "notify all observers and have new data displayed" do
          weather_data = WeatherData.new
          current_conditions = CurrentConditionsDisplay.new(weather_data)
          forecast_display = ForecastDisplay.new(weather_data)
          statistics_display = StatisticsDisplay.new(weather_data)
          heat_index_display = HeatIndexDisplay.new(weather_data)

          weather_data.set_measurements(80, 65, 30.4)
          assert_equal "Current conditions are: 80 F degrees, 65% humidity", current_conditions.display
          assert_equal "Forecast: Improving weather on the way!", forecast_display.display
          assert_equal "Avg/Max/Min temperature 80.0/80/80", statistics_display.display
          assert_equal "Heat index is 82.95535", heat_index_display.display

          weather_data.set_measurements(82, 70, 29.2)
          assert_equal "Current conditions are: 82 F degrees, 70% humidity", current_conditions.display
          assert_equal "Forecast: Watch out for cooler, rainy weather", forecast_display.display
          assert_equal "Avg/Max/Min temperature 81.0/82/80", statistics_display.display
          assert_equal "Heat index is 86.90123", heat_index_display.display

          weather_data.set_measurements(78, 90, 29.2)
          assert_equal "Current conditions are: 78 F degrees, 90% humidity", current_conditions.display
          assert_equal "Forecast: More of the same", forecast_display.display
          assert_equal "Avg/Max/Min temperature 80.0/82/78", statistics_display.display
          assert_equal "Heat index is 83.64967", heat_index_display.display
        end
      end
    end
  end
end
