def play(string)
  result = ""
  last = nil
  count = 0
  string.each_char do |c|
    if c != last
      result << "#{count}#{last}" unless last.nil?
      count = 0
      last = c
    end
    count += 1
  end
  result << "#{count}#{last}" unless last.nil?
  result
end

string = STDIN.read.chomp
ARGV[0].to_i.times do
  string = play(string)
end
puts string.length
