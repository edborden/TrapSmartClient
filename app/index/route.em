class IndexRoute extends Ember.Route

	beforeModel: -> 
		if @session.loggedIn 
			if @session.me.globalAdmin
				@transitionTo 'admin'
			else
				@transitionTo 'map'		
		
`export default IndexRoute`