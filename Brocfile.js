/* global require, module */

var EmberApp = require('ember-cli/lib/broccoli/ember-app');

var app = new EmberApp();

var pickFiles = require('broccoli-static-compiler');
var mergeTrees = require('broccoli-merge-trees');

// Font-Awesome
var fontAwesomeFonts = pickFiles('bower_components/components-font-awesome/fonts', {
	srcDir: '/',
	destDir: '/fonts'
});

// Keen.io
app.import('bower_components/keen-js/dist/keen.min.js');

// Leaflet
app.import('bower_components/leaflet-dist/leaflet.js');
app.import('bower_components/leaflet-dist/leaflet.css');
var leafletAssets = pickFiles('bower_components/leaflet-dist/images', {
	srcDir: '/',
	destDir: '/images'
});

// Ember Leaflet
app.import('bower_components/ember-leaflet/dist/ember-leaflet.js');

// Bootstrap
app.import('bower_components/bootstrap/js/dropdown.js');
app.import('bower_components/bootstrap/js/carousel.js');
app.import('bower_components/bootstrap/js/tooltip.js');

module.exports = mergeTrees([app.toTree(),fontAwesomeFonts,leafletAssets]);