# coding: utf-8
import xmlrpc.client

with xmlrpc.client.ServerProxy("http://localhost:8081/") as server:
    result = server.soma(5,3)
    print("O resultado da soma é:", result["resultado"])

    result = server.divide(11,4)
    print("O resultado da divisão é", result["resultado"], "e o resto é", result["resto"])
