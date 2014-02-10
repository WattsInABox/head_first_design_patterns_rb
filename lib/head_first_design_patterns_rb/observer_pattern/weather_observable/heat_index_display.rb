module ObserverPattern
  module WeatherObservable
    class HeatIndexDisplay
      include DisplayElement
      include Observer

      attr_accessor :heat_index, :observable

      def initialize(observable)
        self.observable = observable
        self.observable.add_observer(self)
      end

      def display
        "Heat index is #{heat_index}"
      end

      def update
        t = observable.temperature
        rh = observable.humidity
        self.heat_index = ((16.923 + (0.185212 * t) + (5.37941 * rh) - 
            (0.100254 * t * rh) + (0.00941695 * (t * t)) + 
            (0.00728898 * (rh * rh)) + (0.000345372 * (t * t * rh)) - 
            (0.000814971 * (t * rh * rh)) + (0.0000102102 * (t * t * rh * rh)) -
            (0.000038646 * (t * t * t)) + (0.0000291583 * (rh * rh * rh)) + 
            (0.00000142721 * (t * t * t * rh)) +
            (0.000000197483 * (t * rh * rh * rh)) - 
            (0.0000000218429 * (t * t * t * rh * rh)) +     
            0.000000000843296 * (t * t * rh * rh * rh)) -
            (0.0000000000481975 * (t * t * t * rh * rh * rh))).
          # limit to 5 significant digits
          round(5)
      end
    end
  end
end
