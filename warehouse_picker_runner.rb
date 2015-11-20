require_relative "./warehouse_picker_functions"

#### SINGLE BAY/ITEM
##Given a bay number, return the item stored in that bay
stored_item = item_at_bay("b5")
puts "The item stored in b5 is #{stored_item}. I expect it to be nail filer."
puts "\n"

##Given a list of items, find the bays
bay_number = bay_stored_in("nail filer")
puts "The nail filer is stored in bay #{bay_number}. I expect it to be stored in b5."
puts "\n"


### MULTIPLE BAYS/ITEMS
##Given a list of bays, list the items in those bays
stored_items = items_in_bays(["b5", "b10", "b6"])
puts "The items stored in bays b5, b10 and b6 are #{stored_items}. I expect nail filer, cookie jar, tooth paste."
puts "\n"

##Given a list of items, find the bays
bay_numbers = bays_stored_in(["shoe lace", "rusty nail", "leg warmers"])
puts "The shoe lace, rusty nail and leg warmers are stored in bays #{bay_numbers}. I expect c9, c1, c10."
puts "\n"


### ADVANCED
## Given a list of bays, list the items in those bays, and calculate the distance from the furthest apart bays.


## Given a list of products, list the bays that need to be visited and order them in the order they need to be visited from entrance to exit.

-