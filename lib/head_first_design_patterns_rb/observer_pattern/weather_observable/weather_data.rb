require 'observer' # Observable module is in observer.rb in Ruby core

module ObserverPattern
  module WeatherObservable
    class WeatherData
      # Observable is NOT a class like it is in Java so that's why we still inherit
      include Observable

      attr_accessor :humidity, :pressure, :temperature

      def set_measurements(temperature, humidity, pressure)
        self.temperature = temperature
        self.humidity = humidity
        self.pressure = pressure

        self.changed

        notify_observers(temperature, humidity, pressure)
      end
    end
  end
end
