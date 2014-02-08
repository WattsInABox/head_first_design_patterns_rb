module Strategy
  class MuteQuack < QuackBehavior
    def quack
      puts_and_return '/silence'
    end
  end
end
