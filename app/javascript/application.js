import * as React from 'react';
import * as ReactDOM from 'react-dom/client';

import App from 'components/App.js';

const mountEntrypoint = () => {
  const rootEl = document.createElement('div');
  rootEl.setAttribute('id', 'App');
  document.body.appendChild(rootEl);

  const root = ReactDOM.createRoot(rootEl);
  root.render(<App />);
};

if (!document.getElementById('App')) {
  mountEntrypoint();
}
