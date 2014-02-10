module ObserverPattern
  module WeatherObservable
    # Ruby does not have a built-in Observer so we'll just keep ours
    module Observer
      extend ActiveSupport::Concern

      def update(temperature, humidity, pressure)
        raise NotImplementedError
      end
    end
  end
end
