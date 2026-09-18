$env.PATH = ($env.PATH | append [
    $"($env.HOME)/bin",
    "/usr/local/bin",
    "/opt/homebrew/bin",
    $"($env.HOME)/.cargo/bin"
])
