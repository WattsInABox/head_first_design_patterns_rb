module ObserverPattern
  module WeatherObservable
    module DisplayElement
      extend ActiveSupport::Concern

      def display
        raise NotImplementedError
      end
    end
  end
end

require_relative 'current_conditions_display'
require_relative 'forecast_display'
require_relative 'heat_index_display'
require_relative 'statistics_display'
