module Strategy
  class Squeak < QuackBehavior
    def quack
      puts_and_return 'rubber duckie squeak'
    end
  end
end
