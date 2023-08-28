// Enable UI
ui = true

// Filesystem storage
storage "file" {
  path = "/vault/file"
}

// TCP Listener
listener "tcp" {
  address = "0.0.0.0:8200"
  tls_disable = "true"
}