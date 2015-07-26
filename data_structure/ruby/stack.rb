class Stack
  attr_reader :length, :top

  def initialize(length)
    @length = length
    @array = Array.new(@length)
    @top = nil
  end

  def empty?
    return @top == nil
  end

  def full?
    return @top == @length - 1
  end

  def singleton?
    return @top == 0
  end

  def push(value)
    raise "Stack overflow!" if self.full?
    if self.empty?
      @top = 0
    else
      @top += 1
    end
    @array[@top] = value
  end

  def pop
    raise "Stack underflow!" if self.empty?
    pop_value = @array[@top]
    @top = (self.singleton? ? nil : (@top - 1))
    return pop_value
  end

  def display
    if self.empty?
      puts "[]"
    else
      p @array
    end
  end
end
