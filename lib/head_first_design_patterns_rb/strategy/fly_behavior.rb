module Strategy
  # @abstract
  module FlyBehavior
    extend ActiveSupport::Concern

    # @abstract
    def fly
      raise NotImplementedError
    end
  end
end

require_relative 'fly_behavior/fly_no_way'
require_relative 'fly_behavior/fly_rocket_powered'
require_relative 'fly_behavior/fly_with_wings'
