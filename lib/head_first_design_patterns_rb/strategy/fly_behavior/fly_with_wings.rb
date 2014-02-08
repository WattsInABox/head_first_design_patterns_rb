module Strategy
  class FlyWithWings < FlyBehavior
    def fly
      puts_and_return 'I am in flight like the Wrights'
    end
  end
end
