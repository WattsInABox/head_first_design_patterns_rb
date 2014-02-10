module Strategy
  class Quack
    include QuackBehavior
    
    def quack
      puts_and_return 'Uh... quack?'
    end
  end
end
