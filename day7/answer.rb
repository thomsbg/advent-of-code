$output = {}
$machine = {}

STDIN.each_line do |line|
  gate, wire = line.chomp.split ' -> '
  $machine[wire] = gate.split
end

def get(wire)
  return wire.to_i if (wire =~ /^\d+$/)
  return $output[wire] if $output.key?(wire)
  gate = $machine[wire]
  if gate.length == 1
    value = get(gate[0])
  else
    value = case gate[-2]
    when 'AND'
      get(gate[0]) & get(gate[2])
    when 'OR'
      get(gate[0]) | get(gate[2])
    when 'LSHIFT'
      get(gate[0]) << get(gate[2])
    when 'RSHIFT'
      get(gate[0]) >> get(gate[2])
    when 'NOT'
      ~get(gate[1])
    end
  end
  $output[wire] = value
end

# Q1
puts get('a')

# Q2
$machine['b'] = [get('a').to_s]
$output = {}
puts get('a')
