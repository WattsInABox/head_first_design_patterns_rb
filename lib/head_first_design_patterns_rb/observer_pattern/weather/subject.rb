module ObserverPattern
  module Weather
    module Subject
      extend ActiveSupport::Concern
      attr_accessor :observers

      def initialize
        self.observers = Array.new
      end

      def register_observer(o)
        raise NotImplementedError
      end

      def remove_observer(o)
        raise NotImplementedError
      end

      def notify_observers
        raise NotImplementedError
      end
    end
  end
end
