module ObserverPattern
  module WeatherObservable
    class CurrentConditionsDisplay
      include DisplayElement
      include Observer

      attr_accessor :temperature, :humidity, :observable

      def initialize(observable)
        self.observable = observable
        self.observable.add_observer(self)
      end

      def display
        puts_and_return "Current conditions are: #{temperature} F degrees, #{humidity}% humidity"
      end

      def update
        self.temperature = observable.temperature
        self.humidity = observable.humidity
      end
    end
  end
end
