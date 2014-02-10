module Strategy
  class FlyRocketPowered
    include FlyBehavior
    
    def fly
      'I got a rocket strapped to my back and I am flying, baby!'
    end
  end
end
