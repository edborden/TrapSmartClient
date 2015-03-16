`import config from './config/environment'`

class Router extends Ember.Router
	location: config.locationType

Router.map ->
	@route 'products'
	@route 'applications'
	@route 'company'
	@route 'login'

`export default Router`
