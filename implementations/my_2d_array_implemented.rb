require './my_array.rb'
class My2dArrayImplemented

  def initialize
    @my_2d_array = Array.new
  end
  
  def add_to_drawer(name, element)
    get_drawer(name).insert(element)
  end

  def find_in_drawer(name, element)
    get_drawer(name).find(element)
  end
  
  def print
    @my_2d_array.each(&:print)
  end

  def build_drawer(name)
    initialize_drawer(name) unless respond_to?(:"#{name}")
  end

  def get_drawer(name)
    self.public_send("#{name}")
  end

  private

  def initialize_drawer(name)
    self.class.send(:define_method, "#{name}") do
      unless instance_variable_get("@#{name}")
        instance_variable_set("@#{name}", MyArrayImplemented.new)
        @my_2d_array.push(instance_variable_get("@#{name}"))
      end
    instance_variable_get("@#{name}")
    end
  end

end
