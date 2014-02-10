module Strategy
  class MuteQuack
    include QuackBehavior

    def quack
      puts_and_return '/silence'
    end
  end
end
