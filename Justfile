watch:
    mise watch build

install_watchexec:
    mise use watchexec@latest

build:
    gleam build

serve: build
    miniserve --index index.html

install_server:
    brew install miniserve

install_rebar:
    curl https://s3.amazonaws.com/rebar3/rebar3 -o bin/rebar3
    chmod +x bin/rebar3
