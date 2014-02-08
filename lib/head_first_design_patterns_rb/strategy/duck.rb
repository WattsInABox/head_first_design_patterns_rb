module Strategy
  class Duck
    def swim
      puts_and_return 'Just keep swimming'
    end

    def display
      puts_and_return 'Pretend this is a duck picture'
    end

    def quack
      puts_and_return 'Uh... quack?'
    end

    def fly
      puts_and_return 'Flap of the wings is what you see and hear'
    end
  end
end
