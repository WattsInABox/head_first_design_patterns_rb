module ObserverPattern
  module WeatherObservable
    class ForecastDisplay
      include DisplayElement
      include Observer

      attr_accessor :current_pressure, :last_pressure, :observable

      def initialize(observable)
        self.observable = observable
        self.observable.add_observer(self)

        self.current_pressure = 29.92
      end

      def display
        if current_pressure > last_pressure
          puts_and_return "Forecast: Improving weather on the way!"
        elsif current_pressure == last_pressure
          puts_and_return "Forecast: More of the same"
        elsif current_pressure < last_pressure
          puts_and_return "Forecast: Watch out for cooler, rainy weather"
        end
      end

      def update
        self.last_pressure = current_pressure
        self.current_pressure = observable.pressure
      end
    end
  end
end
