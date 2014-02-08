module Strategy
  class ModelDuck < Duck
    def initialize
      super 
      
      self.fly_behavior = FlyNoWay.new
    end

    def display
      puts_and_return 'I am mostly plastic and NOT explosive'
    end
  end
end
