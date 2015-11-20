WAREHOUSE = [
  {bay: "a10", item: "rubber band"},
  {bay: "a9", item: "glow stick"},
  {bay: "a8", item: "model car"},
  {bay: "a7", item: "bookmark"},
  {bay: "a6", item: "shovel"},
  {bay: "a5", item: "rubber duck"},
  {bay: "a4", item: "hanger"},
  {bay: "a3", item: "blouse"},
  {bay: "a2", item: "stop sign"},
  {bay: "a1", item: "needle"},
  {bay: "c1", item: "rusty nail"},
  {bay: "c2", item: "drill press"},
  {bay: "c3", item: "chalk"},
  {bay: "c4", item: "word search"},
  {bay: "c5", item: "thermometer"},
  {bay: "c6", item: "face wash"},
  {bay: "c7", item: "paint brush"},
  {bay: "c8", item: "candy wrapper"},
  {bay: "c9", item: "shoe lace"},
  {bay: "c10", item: "leg warmers"},
  {bay: "b1", item: "tyre swing"},
  {bay: "b2", item: "sharpie"},
  {bay: "b3", item: "picture frame"},
  {bay: "b4", item: "photo album"},
  {bay: "b5", item: "nail filer"},
  {bay: "b6", item: "tooth paste"},
  {bay: "b7", item: "bath fizzers"},
  {bay: "b8", item: "tissue box"},
  {bay: "b9", item: "deodorant"},
  {bay: "b10", item: "cookie jar"}
]

### SINGLE BAY/ITEM
def item_at_bay(bay) 
  item = ""
  WAREHOUSE.each {|storage| item = storage[:item] if storage[:bay] == bay}
  item
end

def bay_stored_in(item)
  bay = ""
  WAREHOUSE.each {|storage| bay = storage[:bay] if storage[:item] == item}
  bay
end


### MULTIPLE BAYS/ITEMS

def items_in_bays(bays)
  items = []
  bays.each { |bay| items << item_at_bay(bay) }
  items
end

def bays_stored_in(items)
  bays = []
  items.each { |item| bays << bay_stored_in(item) }
  bays
end


### ADVANCED
def furthest_distance(bay_numbers)
  positions = []
  bay_numbers.each do |bay|
    positions << WAREHOUSE.index {|h| h[:bay] == bay}
  end
  distance = positions.max - positions.min
end


def bay_order(bay_numbers)
  positions = []
  order = {}
  visit_order = []
  bay_numbers.each do |bay|
    position = WAREHOUSE.index {|h| h[:bay] == bay}
    positions << position
    order[position] = bay
  end
  positions.sort!
  positions.each { |p| visit_order << order[p]}
  visit_order
end



