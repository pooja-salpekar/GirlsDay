module Helper

  def build_drawer(name)
    initialize_drawer(name) unless respond_to?(:"#{name}")
  end

  def get_drawer(name)
    self.public_send("#{name}")
  end

  def initialize_drawer(name)
    self.class.send(:define_method, "#{name}") do
      unless instance_variable_get("@#{name}")
        instance_variable_set("@#{name}", ::Drawer.new)
        @my_2d_array.push(instance_variable_get("@#{name}"))
      end
    instance_variable_get("@#{name}")
    end
  end

end