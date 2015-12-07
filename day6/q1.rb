lights = Array.new(1000 * 1000, 0) # row order
STDIN.each_line do |line|
  _, instr, x1, y1, x2, y2 = *line.match(/(toggle|turn on|turn off) (\d+),(\d+) through (\d+),(\d+)/)
  x1 = x1.to_i
  y1 = y1.to_i
  x2 = x2.to_i
  y2 = y2.to_i
  y1.upto(y2).each do |y|
    lights.fill(1000*y+x1..1000*y+x2) do |i|
      case instr
      when 'turn on'
        1
      when 'turn off'
        0
      when 'toggle'
        1 - lights[i]
      end
    end
  end
end
puts lights.count(1)
