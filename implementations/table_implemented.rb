require_relative './drawer_implemented.rb'
require_relative './helper.rb'

class TableImplemented
  include Helper
  
  def initialize
    @my_2d_array = Array.new
  end
  
  def add_to_drawer(name, element)
    get_drawer(name).insert(element)
  end

  def find_in_drawer(name, element)
    get_drawer(name).find(element)
  end
  
  def print_drawer(name)
    get_drawer(name).print
  end
  
  def print
    @my_2d_array.each(&:print)
  end

end
