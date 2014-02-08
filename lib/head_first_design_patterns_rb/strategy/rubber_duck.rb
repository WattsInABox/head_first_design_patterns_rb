module Strategy
  class RubberDuck < Duck
    def display
      puts_and_return 'I am yellow and rubbery'
    end

    def quack
      puts_and_return 'If you squeeze me, I will squeak instead of quack'
    end
  end
end
