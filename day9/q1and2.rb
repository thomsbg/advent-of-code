require 'set'

CITIES = Set.new
DISTANCES = Hash.new
PATTERN = /^(.*?) to (.*?) = (.*?)$/
STDIN.each_line do |line|
  _, cityA, cityB, distance = *PATTERN.match(line.chomp)
  CITIES << cityA << cityB
  DISTANCES[[cityA, cityB]] = distance.to_i
end

routes = CITIES.to_a.permutation.map do |route|
  route.each_cons(2).reduce(0) do |acc, cities|
    acc + (DISTANCES[cities] || DISTANCES[cities.reverse])
  end
end

puts "Min: #{routes.min}", "Max: #{routes.max}"
