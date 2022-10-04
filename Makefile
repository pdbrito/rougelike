.PHONY: wasm

run:
	cargo run

wasm:
	wasm-bindgen target/wasm32-unknown-unknown/release/roguelike.wasm --out-dir wasm --no-modules --no-typescript

serve:
	python -m http.server --directory wasm 8000
