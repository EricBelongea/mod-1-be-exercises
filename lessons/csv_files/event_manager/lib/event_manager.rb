# ./lib/event_manager.rb
require "csv"
# puts "EventManager initialized."

### Reads the CSV
# contents = File.read "./data/event_attendees.csv"
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
# lines = File.readlines "./data/event_attendees.csv"
# lines.each_with_index do |line,index|
#   next if index == 0
#   columns = line.split(",")
#   name = columns[2]
#   puts name
# end


##### Start Iteration One #####


### We are using Ruby's built in method, CSV, which allows us to inform the method that there is a header. 
# contents = CSV.open "./data/event_attendees.csv", headers: true
# contents.each do |row|
#   name = row[2]
#   puts name
# end


### Using Ruby's built in CSV method again, but now we are adding in another parameter to convert the header indexes to sym.
# contents = CSV.open "./data/event_attendees.csv", headers: true, header_converters: :symbol
# contents.each do |row|
#   name = row[:last_name]
#   puts name
# end


### This will print all of the names and zipcodes. If we uncomment and run the code we will be able to see that not all zipcode 
### are uniform so we will need to do some zipcode manipulation. 
# contents = CSV.open "./data/event_attendees.csv", headers: true, header_converters: :symbol
# contents.each do |row|
#   name = row[:first_name]
#   zipcode = row[:zipcode]
#   puts "#{name} #{zipcode}"
# end



### Below we format the zipcodes to all be standardized. 
contents = CSV.open './data/event_attendees.csv', headers: true, header_converters: :symbol

contents.each do |row|
  name = row[:first_name]
  zipcode = row[:zipcode]

  if zipcode.nil?
    zipcode = "00000"
  elsif zipcode.length < 5
    zipcode = zipcode.rjust 5, "0"
  elsif zipcode.length > 5
    zipcode = zipcode[0..4]
  end

  puts "#{name} #{zipcode}"
end