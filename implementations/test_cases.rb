require_relative './drawer_implemented.rb'
require_relative './table_implemented.rb'

puts "Let's build drawers"
fruits = DrawerImplemented.new
fruits.insert("apple")
fruits.insert("banana")
fruits.insert("grapes")
fruits.print
puts fruits.find("banana")
puts fruits.find("random")

puts "Let's build tables"
table = TableImplemented.new
table.build_drawer("clothes")
table.build_drawer("fruits")
table.build_drawer("devices")

table.add_to_drawer("clothes", "shirt")
table.add_to_drawer("clothes", "jacket")
table.add_to_drawer("clothes", "skirt")
table.add_to_drawer("clothes", "scarf")

table.add_to_drawer("fruits", "apple")
table.add_to_drawer("fruits", "banana")
table.add_to_drawer("fruits", "peach")
table.add_to_drawer("fruits", "orange")

table.add_to_drawer("devices", "mobile")
table.add_to_drawer("devices", "tablet")
table.add_to_drawer("devices", "laptop")

table.print
