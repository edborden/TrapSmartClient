`import Resolver from 'ember/resolver'`
`import loadInitializers from 'ember/load-initializers'`
`import config from './config/environment'`

Ember.MODEL_FACTORY_INJECTIONS = true

L.Icon.Default.imagePath = 'images'

class App extends Ember.Application
	modulePrefix: config.modulePrefix,
	podModulePrefix: config.podModulePrefix,
	Resolver: Resolver

loadInitializers(App, config.modulePrefix)

`export default App`