require 'digest'
secret = STDIN.read.chomp
i = 1
n = ARGV[0].to_i
prefix = '0' * n
loop do
  digest = Digest::MD5.hexdigest("#{secret}#{i}")
  if digest.start_with?(prefix)
    puts i
    exit
  end
  i += 1
end
