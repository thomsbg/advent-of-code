puts STDIN.each_line.inject(0) { |total, line|
  dims = line.split('x').map(&:to_i).sort
  total + (2 * dims[0]) + (2 * dims[1]) + (dims.inject(:*))
}
