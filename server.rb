require 'socket'

server = TCPServer.open(2000)
loop {                         
  client = server.accept      
  request = client.read
  verb, file = request.split(' ') 
  print verb
  if (File.exist?(file)) 
    if verb == 'GET'
      content = File.open(file).read
      response = "HTTP/1.0 200 OK\r\n\r\nContent-Type: text/html\r\n\r\nContent-Length: #{content.length}\r\n\r\n #{content}"
      client.write(response)
    end 
  end  
}