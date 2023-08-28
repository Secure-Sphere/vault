FROM hashicorp/vault:1.14 AS vault

WORKDIR /vault

COPY vault-config.hcl /vault/config/vault-config.hcl
VOLUME /vault/file /vault/logs

EXPOSE 8200

ENTRYPOINT ["vault", "server", "-config=/vault/config/vault-config.hcl"]