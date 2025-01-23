<?xml version="1.0" encoding="UTF-8"?>
<server>
    <keyStore id="MQWebKeyStore" location="/run/runmqserver/tls/{{ .webKeystore }}" type="PKCS12" password="{{ .password }}"/>
    <keyStore id="MQWebTrustStore" location="/run/runmqserver/tls/trust.p12" type="PKCS12" password="{{ .password }}"/>
    <ssl id="thisSSLConfig" clientAuthenticationSupported="true" keyStoreRef="MQWebKeyStore" trustStoreRef="{{ .webTruststoreRef }}" sslProtocol="TLSv1.2"/>
    <sslDefault sslRef="thisSSLConfig"/>
</server>
