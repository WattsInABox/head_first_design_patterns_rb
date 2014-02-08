module Strategy
  # @abstract
  class FlyBehavior
    # @abstract
    def fly
      raise NotImplementedError
    end
  end
end

require_relative 'fly_behavior/fly_no_way'
require_relative 'fly_behavior/fly_with_wings'
