function FindProxyForURL(url, host) {
    if (isInNet(dnsResolve(host), "127.0.0.0", "255.0.0.0")) {
        return "DIRECT";
    }
    proxyUrl = "PROXY " + myIpAddress() + ":8888;";
    return proxyUrl;
}
