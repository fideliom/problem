require 'socket'
 
host = 'localhost'    
port = 2000                           
path = "index.html"               


request = "GET #{path} HTTP/1.0"

socket = TCPSocket.open(host,port)  
socket.print(request)  
resp = socket.readl
puts resp           
                