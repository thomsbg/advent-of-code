puts STDIN.each_line.inject(0) { |total, line|
  dims = line.split('x').map(&:to_i).sort
  total + (3 * dims[0] * dims[1]) + (2 * dims[1] * dims[2]) + (2 * dims[0] * dims[2])
}
