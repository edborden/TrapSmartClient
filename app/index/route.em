class IndexRoute extends Ember.Route

	beforeModel: -> 
		if @session.loggedIn 
			if @session.me.globalAdmin
				@transitionTo 'admin'
			else if @session.me.company.premium
				@transitionTo 'map'		
			else 
				@transitionTo 'traps'
		
`export default IndexRoute`