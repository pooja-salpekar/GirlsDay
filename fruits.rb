class Fruits

  def initialize
    @my_array = Array.new
  end

  def insert(element)
    @my_array.push(element)
  end

  def find(element)
    puts @my_array.find_index(element)
  end

  def size
    puts @my_array.size
  end

  def print
   puts "[ #{@my_array.join(" | ")} ]"
  end

end

