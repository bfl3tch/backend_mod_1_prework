# things = ['a', 'b', 'c', 'd']
# puts things[1]
# things[1] = 'z'
# puts things[1]
#
#
# stuff = {'name' => 'Zed', 'age' => 39, 'height' => 6 * 12 + 2}
# puts stuff['name']
# puts stuff['age']
# puts stuff['height']
# stuff['city'] = "San Francisco"
# puts stuff['city']
# puts stuff['age']
# stuff['shoe_size'] = 10
# puts stuff['shoe_size']
# stuff[1] = "wow"
# stuff[2] = "neato"
# puts stuff
#
# stuff.delete('city')
# puts stuff
# stuff.delete(1)
# stuff.delete(2)
# puts stuff
# stuff.delete('shoe_size')
# puts stuff

#create a mapping of state to abbreviation

states = {
  'Oregon' => 'OR',
  'Florida' => 'FL',
  'California' => 'CA',
  'New York' => 'NY',
  'Michigan' => 'MI',
}

#create a basic set of states and some cities in them
cities = {
  'CA' => 'San Francisco',
  'MI' => 'Detriot',
  'FL' => 'Jacksonville',
}

#add some more cities
cities['NY'] = 'New York'
cities['OR'] = 'Portland'

#puts out some cities
puts '-' * 10
puts "NY State has: #{cities['NY']}"
puts "OR state has: #{cities['OR']}"

#puts some states
puts '-' * 10
puts "Michigan's abbreviation is: #{states['Michigan']}"
puts "Florida's abbreviation is: #{states['Florida']}"

#do it by using the states then cities dict
puts '-' * 10
puts "Michigan has #{cities[states['Michigan']]}"
puts "Florida has #{cities[states['Florida']]}"

#puts every state abbreviation
puts '-' * 10
states.each do |state, abbrev|
  puts "#{state} is abbreviated #{abbrev}"
end

#puts every city in state
puts '-' * 10
cities.each do |abbrev, city|
  puts "#{abbrev} has the city #{city}"
end

puts '-' * 10
states.each do |state,abbrev|
  city = cities[abbrev]
  puts "#{state} is abbreviated #{abbrev} and has city #{city}"
end

puts '-' * 10
state = states['Texas']

if !state
  puts "Sorry, no Texas."
end

#default values using ||= with the nil result
city = cities['TX']
city ||= 'Does not exist'
puts "The city for the state 'TX' is: #{city}"

puts states.values
puts states.keys
