`import SessionService from 'trap-smart-client/services/session'`
#`import KeenService from 'math-flows-client/services/keen'`

initializer =
	name:'services'
	after: 'store'
	initialize: (container,application) ->

		#Register service objects
		application.register 'service:session', SessionService, {singleton: true}
		#application.register 'service:keen', KeenService, {singleton: true}
		services = ['session']

		#Setup service objects
		application.inject 'service:session', 'store', 'store:main'
		#application.inject 'service:keen', 'session', 'service:session'

		#Inject into app factories
		['controller','route','adapter'].forEach (type) ->
			services.forEach (service) ->
				application.inject type, service, 'service:' + service

`export default initializer`