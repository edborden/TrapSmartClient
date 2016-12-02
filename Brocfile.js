/* global require, module */

var EmberApp = require('ember-cli/lib/broccoli/ember-app');

var app = new EmberApp({
	fingerprint: {
		exclude: ['images/']
	}
});

var pickFiles = require('broccoli-static-compiler');
var mergeTrees = require('broccoli-merge-trees');

// Font-Awesome
var fontAwesomeFonts = pickFiles('bower_components/components-font-awesome/fonts', {
	srcDir: '/',
	destDir: '/fonts'
});

// Keen.io
app.import('bower_components/keen-js/dist/keen.min.js');

// Bootstrap
app.import('bower_components/bootstrap/js/dropdown.js');
app.import('bower_components/bootstrap/js/carousel.js');
app.import('bower_components/bootstrap/js/tooltip.js');
app.import('bower_components/bootstrap/js/collapse.js');

// PhoneFormat
app.import('bower_components/phoneformat.js/dist/phone-format.js');
app.import('bower_components/phoneformat.js/dist/phone-format-global.js');

module.exports = mergeTrees([app.toTree(),fontAwesomeFonts]);