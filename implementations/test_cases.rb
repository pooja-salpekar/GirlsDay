require_relative './drawer_implemented.rb'
require_relative './table_implemented.rb'

fruits = DrawerImplemented.new
fruits.insert("apple")
fruits.insert("banana")
fruits.insert("grapes")
fruits.print
puts fruits.find("banana")
puts fruits.find("random")


table = TableImplemented.new
table.build_drawer("clothes")
table.build_drawer("fruits")
table.build_drawer("devices")

table.add_to_drawer("clothes", "shirt")
table.add_to_drawer("clothes", "jacket")
table.add_to_drawer("clothes", "skirt")
table.add_to_drawer("clothes", "scarf")

# multi_drawers.add_to_drawer("fruits", "apple")
# multi_drawers.add_to_drawer("fruits", "banana")
# multi_drawers.add_to_drawer("fruits", "peach")
# multi_drawers.add_to_drawer("fruits", "orange")

# multi_drawers.add_to_drawer("devices", "mobile")
# multi_drawers.add_to_drawer("devices", "tablet")
# multi_drawers.add_to_drawer("devices", "laptop")

table.print
