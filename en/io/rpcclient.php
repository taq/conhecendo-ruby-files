<?php
// addition
$request = xmlrpc_encode_request("sum", [5, 3]);
$context = stream_context_create([
    "http" => [
        "method"  => "POST",
        "header"  => "Content-Type: text/xml",
        "content" => $request
]]);

$file     = file_get_contents("http://localhost:8081", false, $context);
$response = xmlrpc_decode($file);

if ($response && xmlrpc_is_fault($response)) {
    trigger_error("xmlrpc: ".$response["faultString"]." (".$response["faultCode"]." )");
} else {
    print "The result of the addition is ".$response["result"]."\n";
}

// division
$request = xmlrpc_encode_request("divide", [11, 4]);
$context = stream_context_create([
    "http" => [
        "method"  => "POST",
        "header"  => "Content-Type: text/xml",
        "content" => $request
]]);

$file = file_get_contents("http://localhost:8081", false, $context);
$response = xmlrpc_decode($file);

if ($response && xmlrpc_is_fault($response)) {
    trigger_error("xmlrpc: ".$response["faultString"]." (".$response["faultCode"]." )");
} else {
    print "The result of the division is ".$response["result"]." and the remainder is ".$response["rest"]."\n";
}
?>
