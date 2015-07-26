class Queue
  attr_reader :length, :head, :tail

  def initialize(length)
    @length = length + 1
    @array = Array.new(@length)
    @head = @tail = 0
  end

  def empty?
    return @head == @tail
  end

  def full?
    return (@tail + 1) % @length == @head
  end

  def enqueue(number)
    raise "Queue overflow!" if self.full?
    @array[@tail] = number
    @tail = (@tail + 1) % @length
  end

  def dequeue
    raise "Queue underflow!" if self.empty?
    pop_value = @array[@head]
    @head = (@head + 1) % @length
    return pop_value
  end

  def display
    if self.empty?
      puts "[]"
    else
      output_string = "["
      p @array
    end
  end
end
