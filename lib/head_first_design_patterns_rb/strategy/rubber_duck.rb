module Strategy
  class RubberDuck < Duck
    def initialize
      super 
      
      self.fly_behavior = FlyNoWay.new
      self.quack_behavior = Squeak.new
    end

    def display
      puts_and_return 'I am yellow and rubbery'
    end
  end
end
