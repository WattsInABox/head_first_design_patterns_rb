module ObserverPattern
  module Weather
    class WeatherData
      include Subject

      attr_accessor :humidity, :pressure, :temperature

      def notify_observers
        # using collect to get all the return values of the update
        observers.collect { |o| o.update(temperature, humidity, pressure) }
      end

      def register_observer(o)
        self.observers << o
      end

      def remove_observer(o)
        self.observers.delete(o)
      end

      def set_measurements(temperature, humidity, pressure)
        self.temperature = temperature
        self.humidity = humidity
        self.pressure = pressure

        notify_observers
      end
    end
  end
end
