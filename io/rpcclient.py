# coding: utf-8
import xmlrpclib

server = xmlrpclib.Server("http://localhost:8081")
result = server.soma(5,3)
print "O resultado da soma é:", result["resultado"]

result = server.divide(11,4)
print "O resultado da divisão é", result["resultado"], "e o resto é", result["resto"]
