dune exec moonc link-core -- \
    /nix/store/lprd1vjwnmyl6v3zdg0a74pc51lmb3n6-bundledCore/lib/target/wasm-gc/release/bundle/core.core \
    main.core \
    -o main.wasm \
    -pkg-sources "moonbitlang/core:/nix/store/lprd1vjwnmyl6v3zdg0a74pc51lmb3n6-bundledCore" \
    -no-dts \
    -g -target wasm-gc
