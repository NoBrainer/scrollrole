import { CssBaseline, ThemeProvider } from '@mui/material';
import React from 'react';
import ReactDOM from 'react-dom/client';
import { Provider } from 'react-redux';
import { BrowserRouter } from 'react-router-dom';
import App from 'App';
import 'fontsource-roboto';
import store, { initializeStore } from 'common/redux/store';
import 'index.css';
import reportWebVitals from 'reportWebVitals';
import theme from 'theme';

initializeStore();

// Debug a11y issues in the browser console
// Note: This does not currently work with react-router-dom Routes, so we can only test after initial page load.
// TODO: Keep tabs on: https://github.com/dequelabs/react-axe/issues/122
if (process.env.NODE_ENV !== 'production') {
  const axe = require('@axe-core/react');
  axe(React, ReactDOM, 1e3);
}

const container = document.getElementById('root');
const root = ReactDOM.createRoot(container);
root.render(
  <Provider store={store}>
    <ThemeProvider theme={theme}>
      <CssBaseline />
      <BrowserRouter>
        <App />
      </BrowserRouter>
    </ThemeProvider>
  </Provider>
);

// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVitals(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals
reportWebVitals();
