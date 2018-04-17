require './fruits.rb'
require './helper.rb'
include Helper

class Table

  def initialize
    @my_2d_array = Array.new
  end
  
  def insert_to_drawer(name, element)
   get_drawer(name).insert(element)
  end

  def find_in_drawer(name, element)
    get_drawer(name).find(element)
  end
  
  def print
    @my_2d_array.each(&:print)
  end

end
