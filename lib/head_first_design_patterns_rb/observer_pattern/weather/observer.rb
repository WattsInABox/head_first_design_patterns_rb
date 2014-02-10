module ObserverPattern
  module Weather
    module Observer
      extend ActiveSupport::Concern

      def update(temperature, humidity, pressure)
        raise NotImplementedError
      end
    end
  end
end
