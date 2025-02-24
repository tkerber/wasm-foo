import { add } from 'foo-wasm';
const res = add(30, 12);
const exitCode = res == 42 ? 0 : 1;
process.exit(exitCode);
