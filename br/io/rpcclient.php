<?php
// soma
$request = xmlrpc_encode_request("soma", [5, 3]);
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
    print "O resultado da soma é ".$response["resultado"]."\n";
}

// divisão
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
    print "O resultado da divisão é ".$response["resultado"]." e o resto é ".$response["resto"]."\n";
}
?>
