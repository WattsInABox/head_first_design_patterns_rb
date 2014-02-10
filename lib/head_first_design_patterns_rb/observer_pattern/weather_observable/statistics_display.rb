module ObserverPattern
  module WeatherObservable
    class StatisticsDisplay
      include DisplayElement
      include Observer

      attr_accessor :average_temperature, :max_temperature, :min_temperature, 
        :temperature_readings, :observable

      def initialize(observable)
        self.observable = observable
        self.observable.add_observer(self)

        self.average_temperature = 0
        self.max_temperature = 0
        self.min_temperature = 0
        self.temperature_readings = Array.new
      end

      def display
        puts_and_return "Avg/Max/Min temperature #{average_temperature}/#{max_temperature}/#{min_temperature}"
      end

      def update
        self.temperature_readings << observable.temperature
        self.average_temperature = temperature_readings.inject(:+) / temperature_readings.count.to_f
        self.min_temperature = temperature_readings.min
        self.max_temperature = temperature_readings.max
      end
    end
  end
end
