# Object monkey patches
class Object
  # #puts the arguments as expected, but also returns the first argument instead of nil
  # This helps a lot with all the tests for this very simple series of apps we're building.
  # 
  # @note We're only building in order to learn design patterns, not to be perfect. If
  #   we were trying to be perfect, we would return all of the arguments.
  # 
  # @return [String] The first argument as a String.
  def puts_and_return(*args)
    puts *args
    args.first.to_s
  end
end
