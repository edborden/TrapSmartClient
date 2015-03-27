`import config from './config/environment'`

class Router extends Ember.Router
	location: config.locationType

Router.map ->

	#static
	@route 'products'
	@route 'applications', ->
		@route 'urban'
		@route 'research'
		@route 'pest'
		@route 'wildlife'
	@route 'company'
	@route 'news'

	# logged in
	@route 'map'
	@route 'traps', ->
		@route 'edit', {path: 'edit/:trap_id'}, ->
			@route 'notifications'
	@route 'settings', ->
		@route 'company'
		@route 'password'
		@route 'globalnotifs'
	@route 'admin', ->
		@route 'customers', ->
			@route 'new'
			@route 'edit', {path: 'edit/:company_id'}


`export default Router`
