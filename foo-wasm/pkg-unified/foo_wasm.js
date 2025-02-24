import * as wasm from "./foo_wasm_bg.wasm";
export * from "./foo_wasm_bg.js";
import { __wbg_set_wasm } from "./foo_wasm_bg.js";
__wbg_set_wasm(wasm);
wasm.__wbindgen_start();
