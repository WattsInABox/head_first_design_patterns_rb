module ObserverPattern
  module Weather
    class CurrentConditionsDisplay
      include DisplayElement
      include Observer

      attr_accessor :temperature, :humidity, :weather_data

      def initialize(weather_data)
        self.weather_data = weather_data
        self.weather_data.register_observer(self)
      end

      def display
        puts_and_return "Current conditions are: #{temperature} F degrees, #{humidity}% humidity"
      end

      def update(temperature, humidity, pressure)
        self.temperature = temperature
        self.humidity = humidity
      end
    end
  end
end
