function FindProxyForURL(url,host)
{
    // No proxy for localhost
    /*
    if (isInNet(dnsResolve(host), "127.0.0.0", "255.0.0.0")) {
        return "DIRECT";
    }
    */
    proxyUrl = "PROXY "+myIpAddress()+":8888;";
    return proxyUrl;
}
