// https://raw.githubusercontent.com/rahulchaudharyofficial/dotfiles/refs/heads/main/proxy.pac

function FindProxyForURL(url, host) {
    if (isInNet(dnsResolve(host), "127.0.0.0", "255.0.0.0")) {
        return "DIRECT";
    }
    //proxyUrl = "PROXY " + myIpAddress() + ":1508;";
    proxyUrl = "PROXY 192.168.1.2:8888;";
    return proxyUrl;
}
