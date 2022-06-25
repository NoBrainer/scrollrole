const compression = require('compression');
const cookieParser = require('cookie-parser');
const express = require('express');
const helmet = require('helmet');
const createError = require('http-errors');
const path = require('path');
const favicon = require('serve-favicon');
const { httpLogger } = require('./common/logger');

const isDev = process.env.NODE_ENV === 'development';

// Configure the Express app
const app = express();
app.use(helmet());
app.use(favicon(path.join(__dirname, '..', 'public', 'favicon.png')));
app.use(httpLogger);
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(compression());

// On production, host the front-end build
if (!isDev) {
  app.use(express.static(path.join(__dirname, '..', 'build')));
}

// API routes
app.use('/api', require('./api/index'));
app.use('/api/config', require('./api/config'));
app.use('/api/yaml', require('./api/yaml'));

// Catch 404 and forward to error handler
app.use(function (req, res, next) {
  next(createError(404));
});

// Error handler
app.use(function (err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = process.env.NODE_ENV === 'development' ? err : {};

  // render the error page
  res.status(err.status);
  res.send(err.message);
});

module.exports = app;
