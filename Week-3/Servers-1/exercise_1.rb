require 'socket'

server = TCPServer.new(2345)

socket = server.accept


loop do
  socket.puts "Write any word apart from 'quit'"
  answer = socket.gets.chomp.downcase
  if answer == 'quit'
    break
  end
end

socket.puts "You said: #{answer}. Goodbye!"

socket.close
