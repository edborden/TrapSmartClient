/* jshint node: true */

module.exports = function(environment) {
  var ENV = {
    modulePrefix: 'trap-smart-client',
    environment: environment,
    baseURL: '/',
    locationType: 'auto',
    apiHostName: 'http://localhost:3000',
    APP: {},
    EmberENV: {FEATURES: {}}
  };

  if (environment === 'development') {
    // ENV.APP.LOG_RESOLVER = true;
    ENV.APP.LOG_ACTIVE_GENERATION = true;
    // ENV.APP.LOG_TRANSITIONS = true;
    // ENV.APP.LOG_TRANSITIONS_INTERNAL = true;
    ENV.APP.LOG_VIEW_LOOKUPS = true;
  }

  if (environment === 'test') {
    // Testem prefers this...
    ENV.baseURL = '/';
    ENV.locationType = 'none';

    // keep test console output quieter
    ENV.APP.LOG_ACTIVE_GENERATION = false;
    ENV.APP.LOG_VIEW_LOOKUPS = false;

    ENV.APP.rootElement = '#ember-testing';
  }

  if (environment === 'production') {
    ENV.apiHostName = 'https://api.trapsmart.com'
  }

  return ENV;
};
