houses = Hash.new(0)
santaX = santaY = 0
robotX = robotY = 0
houses[[santaX, santaY]] += 1
houses[[robotX, robotY]] += 1
STDIN.each_char.with_index do |char, i|
  if i.even?
    case char
    when '<'
      santaX -= 1
    when '>'
      santaX += 1
    when '^'
      santaY += 1
    when 'v'
      santaY -= 1
    end
    houses[[santaX,santaY]] += 1
  else
    case char
    when '<'
      robotX -= 1
    when '>'
      robotX += 1
    when '^'
      robotY += 1
    when 'v'
      robotY -= 1
    end
    houses[[robotX,robotY]] += 1
  end
end
puts houses.size
