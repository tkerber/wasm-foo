export * from "./foo_wasm_bg.js";
import * as exports from "./foo_wasm_bg.js";
import { __wbg_set_wasm } from "./foo_wasm_bg.js";
import { readFileSync } from 'fs';
import { join, dirname } from 'path';
import { fileURLToPath } from 'url';

let imports = {};
imports['./foo_wasm_bg.js'] = exports;

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);
const wasmPath = join(__dirname, 'foo_wasm_bg.wasm');
const bytes = readFileSync(wasmPath);

const wasmModule = new WebAssembly.Module(bytes);
const wasmInstance = new WebAssembly.Instance(wasmModule, imports);
const wasm = wasmInstance.exports;

__wbg_set_wasm(wasm);
wasm.__wbindgen_start();
