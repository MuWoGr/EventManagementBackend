/* eslint no-unused-vars: [error, { argsIgnorePattern: next }] */
// https://github.com/gothinkster/node-express-realworld-example-app/
const express = require('express');

// const isProduction = process.env.NODE_ENV === 'production';
const isProduction = false;

const app = express();

app.get('/', (req, res) => {
  res.send('Hello World');
});


// / catch 404 and forward to error handler
app.use((req, res, next) => {
  const err = new Error('Not Found');
  err.status = 404;
  next(err);
});


// development error handler
// will print stacktrace
if (!isProduction) {
  app.use((err, req, res, next) => {
    /* eslint-disable no-console */
    console.log(err.stack);
    /* eslint-enable no-console */

    res.status(err.status || 500);

    res.json({
      errors: {
        message: err.message,
        error: err,
      },
    });
  });
}

// production error handler
// no stacktraces leaked to user
app.use((err, req, res, next) => {
  res.status(err.status || 500);
  res.json({
    errors: {
      message: err.message,
      error: {},
    },
  });
});

app.listen(process.env.PORT || 3000);
