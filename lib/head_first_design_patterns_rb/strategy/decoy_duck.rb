module Strategy
  class DecoyDuck < Duck
    def initialize
      super 

      self.fly_behavior = FlyNoWay.new
      self.quack_behavior = MuteQuack.new
    end

    def display
      puts_and_return 'I look like a duck but really I am just a piece of plastic... explosive'
    end
  end
end
