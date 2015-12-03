floor = 0
STDIN.each_char.with_index { |dir, i|
  floor += (dir == '(') ? 1 : -1
  if floor < 0
    puts i + 1
    exit
  end
}
