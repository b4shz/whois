require 'socket'

$target = ARGV[0]

puts "[!] Whois in #{$target}\n"
puts "\n"
s = TCPSocket.open("192.0.47.59", 43)
s.puts "#{$target}"
r = s.recvfrom(1024)
puts r
