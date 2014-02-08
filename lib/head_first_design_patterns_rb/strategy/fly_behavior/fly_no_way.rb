module Strategy
  class FlyNoWay < FlyBehavior
    def fly
      puts_and_return 'I can\'t fly'
    end
  end
end
