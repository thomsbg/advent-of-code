houses = Hash.new(0)
x = y = 0
houses[[x,y]] += 1
STDIN.each_char do |dir|
  case dir
  when '<'
    x -= 1
  when '>'
    x += 1
  when '^'
    y += 1
  when 'v'
    y -= 1
  end
  houses[[x,y]] += 1
end
puts houses.size
