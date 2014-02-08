module Strategy
  class DecoyDuck < Duck
    def display
      puts_and_return 'I look like a duck but really I am just a piece of plastic... explosive'
    end

    def quack
      puts_and_return ''
    end

    def fly
      puts_and_return ''
    end
  end
end
