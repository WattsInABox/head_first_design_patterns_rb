module Strategy
  class Quack < QuackBehavior
    def quack
      puts_and_return 'Uh... quack?'
    end
  end
end
