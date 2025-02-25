import { add } from 'foo-wasm';

function component() {
  const element = document.createElement('div');
  element.setAttribute("data-testid", "the-result");
  element.innerText = add(30, 12).toString(10);
  return element;
}

document.body.appendChild(component());
