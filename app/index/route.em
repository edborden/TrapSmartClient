class IndexRoute extends Ember.Route

	beforeModel: ->
		console.log 'transitioned to index'
		if @session.loggedIn
			console.log 'loggedin'
			if @session.me.globalAdmin
				console.log 'globaladmin'
				@transitionTo 'admin'
			else if @session.me.company.premium
				@transitionTo 'map'   
			else 
				@transitionTo 'traps'
		
`export default IndexRoute`