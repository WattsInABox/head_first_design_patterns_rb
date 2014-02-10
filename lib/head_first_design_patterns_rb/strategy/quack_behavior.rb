module Strategy
  # @abstract
  module QuackBehavior
    extend ActiveSupport::Concern
    
    # @abstract
    def quack
      raise NotImplementedError
    end
  end
end

require_relative 'quack_behavior/mute_quack'
require_relative 'quack_behavior/quack'
require_relative 'quack_behavior/squeak'
