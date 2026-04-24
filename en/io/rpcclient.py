# coding: utf-8
import xmlrpc.client

with xmlrpc.client.ServerProxy("http://localhost:8081/") as server:
    result = server.sum(5,3)
    print("The result of the addition is:", result["result"])

    result = server.divide(11,4)
    print("The result of the division is", result["result"], "and the remainder is", result["rest"])
