import { add } from 'foo-wasm';

function component() {
  const element = document.createElement('div');
  element.innerHTML = add(30, 12);
  return element;
}

document.body.appendChild(component());
