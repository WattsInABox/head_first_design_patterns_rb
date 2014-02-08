module Strategy
  class Duck
    attr_accessor :fly_behavior, :quack_behavior

    def initialize
      self.fly_behavior = FlyWithWings.new
      self.quack_behavior = Quack.new
    end

    def swim
      puts_and_return 'Just keep swimming'
    end

    def display
      puts_and_return 'Pretend this is a duck picture'
    end

    # the book uses #perform_fly but that is just bad semantics (IMO) and serves
    # no real purpose other than not to confuse the most junior of programmer.
    def fly
      fly_behavior.fly
    end

    # the book uses #perform_quack but that is just bad semantics (IMO) and 
    # serves no real purpose other than not to confuse the most junior of 
    # programmer.
    def quack
      quack_behavior.quack
    end

  end
end
