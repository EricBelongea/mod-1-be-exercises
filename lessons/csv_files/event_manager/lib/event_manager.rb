# ./lib/event_manager.rb
require "csv"
puts "EventManager initialized."

contents = File.read "./data/event_attendees.csv"
puts contents