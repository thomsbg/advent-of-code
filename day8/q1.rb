textlen = 0
memlen = 0
STDIN.each_line do |line|
  textlen += line.length - 1
  memlen += eval(line.chomp).length
end
puts textlen - memlen
