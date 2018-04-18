require_relative './drawer.rb'
require_relative './helper.rb'

class Table
  include Helper
  
  def initialize
    @my_2d_array = Array.new
  end
  
  def add_to_drawer(name, element)
    puts "Method not implented"
  end

  def find_in_drawer(name, element)
    puts "Method not implemented"
  end

  def print_drawer(name)
    get_drawer(name).print
  end
  
  def print
    @my_2d_array.each(&:print)
  end

end
