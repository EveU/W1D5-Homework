require_relative "./warehouse_picker_functions"

puts "\n"

#### SINGLE BAY/ITEM
##Given a bay number, return the item stored in that bay

# puts "Which bay would you like to look in?"
# given_bay = gets.chomp

given_bay = "b5"
stored_item = item_at_bay(given_bay)
puts "The item stored in #{given_bay} is #{stored_item}. I expect it to be nail filer."
puts "\n"

##Given a list of items, find the bays

# puts "What item are you looking for?"
# given_item = gets.chomp

given_item = "nail filer"
bay_number = bay_stored_in(given_item)
puts "The #{given_item} is stored in #{bay_number}. I expect it to be stored in b5."
puts "\n"


### MULTIPLE BAYS/ITEMS
##Given a list of bays, list the items in those bays

# puts "Which bays would you like to look in? Please separate each item with a comma."
# given_bays = gets.chomp.split(",")

given_bays = ["b5", "b10", "b6"]
stored_items = items_in_bays(given_bays)
puts "The items stored in bays #{given_bays.join(", ")} are #{stored_items.join(", ")}, respectively. I expect nail filer, cookie jar, tooth paste."
puts "\n"

##Given a list of items, find the bays

# puts "What items are you looking for? Please separate each item with a comma."
# given_items = gets.chomp.split(",")

given_items = ["shoe lace", "rusty nail", "leg warmers"]
bay_numbers = bays_stored_in(given_items)
puts "The #{given_items.join(", ")} are stored in bays #{bay_numbers.join(", ")}, respectively. I expect c9, c1, c10."
puts "\n"


### ADVANCED
## Given a list of bays, list the items in those bays, and calculate the distance from the furthest apart bays.
##Ex1 - b5, b10, b6. nail file, cookie jar, tooth paste. 5.
##Ex2 - b3, c7, c9, a3. picture frame, paint brush, shoe lace, blouse. 15.


# puts "Which bays would you like to look in? Please separate each bay with a comma."
# given_bays = gets.chomp.split(",")

# given_bays = ["b5", "b10", "b6"]
given_bays = ["b3", "c7", "c9", "a3"]
stored_items = items_in_bays(given_bays)
distance = furthest_distance(given_bays)
puts "The items in bays #{given_bays.join(", ")} are #{stored_items.join(", ")}, respectively. They are #{distance} bays apart."
puts "\n"


## Given a list of products, list the bays that need to be visited and order them in the order they need to be visited from entrance to exit.
##Ex1 - shoe lace, rusty nail, leg warmers. c1, c9, c10.
##Ex2 - hanger, deodorant, candy wrapper, rubber band. a10, a4, c8, b9.

# puts "What items are you looking for? Please separate each item with a comma."
# given_items = gets.chomp.split(",")

# given_items = ["shoe lace", "rusty nail", "leg warmers"]
given_items = ["hanger", "deodorant", "candy wrapper", "rubber band"]
bay_numbers = bays_stored_in(given_items)
visit_order = bay_order(bay_numbers)
puts "The #{given_items.join(", ")} are stored in bays #{bay_numbers.join(", ")}, respectively. You should visit the bays in order #{visit_order.join(", ")}."
puts "\n"
