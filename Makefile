PROJECT=i64_bitwise

WAT2WASM=/opt/homebrew/Cellar/wabt/1.0.32/bin/wat2wasm

$(PROJECT).wasm: $(PROJECT).wat
	$(WAT2WASM) $^ -o $@

dis: $(PROJECT).wasm
	wasm-objdump -d $^

clean:
	rm -f *.wasm a.out*
