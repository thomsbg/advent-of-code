escapelen = 0
codelen = 0

def escape(str)
  str.gsub(/["\\]/, { '"' => '\"', '\\' => '\\\\' })
end

STDIN.each_line do |line|
  escapelen += escape(line.chomp).length + 2
  codelen += line.chomp.length
end

puts escapelen - codelen
