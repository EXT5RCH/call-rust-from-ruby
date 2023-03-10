# Call Rust From Ruby

## Start

```s
docker compose build
docker compose run --rm ruby bundle install
docker compose run --rm ruby
```

## Operations After Editing Rust Code

```s
docker compose run --rm rust cargo build --release --manifest-path ffi-rust/Cargo.toml
cp rust/ffi-rust/target/release/libffi_rust.so ruby/lib
docker compose build
docker compose run --rm ruby
```
