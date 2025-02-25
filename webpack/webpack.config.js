import * as path from 'node:path';
import * as url from 'node:url';

const currentDir = path.dirname(url.fileURLToPath(import.meta.url));

export default {
  entry: './src/index.js',
  output: {
    filename: 'main.js',
    path: path.resolve(currentDir, 'dist'),
  },
  experiments: {
    asyncWebAssembly: true,
  },
  mode: 'development',
};
