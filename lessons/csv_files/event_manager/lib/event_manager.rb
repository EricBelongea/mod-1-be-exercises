# ./lib/event_manager.rb
require "csv"
puts "EventManager initialized."

### Reads the CSV
contents = File.read "./data/event_attendees.csv"
# puts contents

### Reads Line by line

# lines = File.readlines "./data/event_attendees.csv"
# lines.each do |line|
#   puts line
# end



### Goes line by line to return the first_name
    # We have to split at the ',' so that we get an array of object that will allow us to call the index. 

# lines = File.readlines "./data/event_attendees.csv"
# lines.each do |line|
#   columns = line.split(",")
#   name = columns[2]
#   puts name
# end


### Line 28 will allow us to skip the header row.
    # we say 'next' if that line matches exactly what our header row is. for this we had to add what our header is. 

# lines = File.readlines "./data/event_attendees.csv"
# lines.each do |line|
#   next if line == "id,RegDate,first_Name,last_Name,Email_Address,HomePhone,Street,City,State,Zipcode\n"
#   columns = line.split(",")
#   name = columns[2]
#   puts name
# end


### Our header is subject to change so we incorporate a counter so we can print by row. Our rows are arrays in arrays, 
### so by skipping the first index we are able to skip the intial header row. 
# lines = File.readlines "./data/event_attendees.csv"
# row_index = 0
# lines.each do |line|
#   row_index = row_index + 1
#   next if row_index == 1
#   columns = line.split(",")
#   name = columns[2]
#   puts name
# end


### The above is so common that they created the '.each_with_index' method for this purpose. Similar to '.flat_map'
lines = File.readlines "./data/event_attendees.csv"
lines.each_with_index do |line,index|
  next if index == 0
  columns = line.split(",")
  name = columns[2]
  puts name
end