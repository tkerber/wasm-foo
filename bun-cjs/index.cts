const foo = require('foo-wasm');
const res = foo.add(30, 12);
const exitCode = res == 42 ? 0 : 1;
process.exit(exitCode);
