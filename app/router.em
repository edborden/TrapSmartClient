`import config from './config/environment'`

class Router extends Ember.Router
	location: config.locationType

Router.map ->
	@route 'products'
	@route 'applications'
	@route 'company'
	@route 'news'
	#@route 'post', {path: '/post/:post_id'}
	@route 'login'
	@route 'me'

`export default Router`
