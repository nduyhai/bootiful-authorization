INSERT INTO oauth2_registered_client (id, client_id, client_id_issued_at, client_secret,
                                      client_secret_expires_at, client_name,
                                      client_authentication_methods,
                                      authorization_grant_types, redirect_uris, scopes,
                                      client_settings, token_settings)
VALUES ('c9db2eb1-14f0-4f3a-b378-ece49049961d', 'greeting-client', '2022-01-09 21:36:46.207855',
        'secret', null, 'c9db2eb1-14f0-4f3a-b378-ece49049961d', 'client_secret_basic',
        'refresh_token,client_credentials,authorization_code',
        'http://127.0.0.1:8080/authorized,http://127.0.0.1:8080/login/oauth2/code/messaging-client-oidc',
        'openid,greeting.read,greeting.write',
        '{"@class":"java.util.Collections$UnmodifiableMap","settings.client.require-proof-key":false,"settings.client.require-authorization-consent":true}',
        '{"@class":"java.util.Collections$UnmodifiableMap","settings.token.reuse-refresh-tokens":true,"settings.token.id-token-signature-algorithm":["org.springframework.security.oauth2.jose.jws.SignatureAlgorithm","RS256"],"settings.token.access-token-time-to-live":["java.time.Duration",300.000000000],"settings.token.refresh-token-time-to-live":["java.time.Duration",3600.000000000]}');

INSERT INTO users (username, password, enabled)
VALUES ('bronn', '$2a$10$clVQmUTDi9TIaqZ4esnyHuCGzBjI0ac0BEw9PFp8MA/IqjPeU3442', true);
INSERT INTO authorities (username, authority)
VALUES ('bronn', 'user');
