class ApplicationRoute extends Ember.Route

	beforeModel: -> 
		if localStorage.trapSmartToken
			@session.openWithToken(localStorage.trapSmartToken).then(
				(success) =>
					@sessionSuccessHandler()
				(error) =>
					@sessionSuccessHandler()
			)
		else
			@sessionSuccessHandler()

	sessionSuccessHandler: ->
		@keen.logSession()
		Ember.$(".center-spinner").hide()
		Ember.run.next @,->
			Ember.$('[data-toggle="tooltip"]').tooltip()
		if @session.loggedIn 
			if @session.me.globalAdmin
				@transitionTo 'admin'
			else
				@transitionTo 'map'

	actions:
		login: (user) -> 
			@transitionTo 'loading'
			@session.openWithUser(user).then(
				(success) =>
					@notify.warning success					
					@transitionTo 'index'
					Ember.$('[data-toggle="tooltip"]').tooltip()
				(error) =>
					@notify.warning error
					@transitionTo 'index'
			)	
		logout: ->
			@transitionTo 'loading'
			@session.close().then => 
				@transitionTo 'index'
				@notify.warning "Logged out successfully."
		save: (model) ->
			if model.isDirty
				model.save().then(
					(success) => @notify.warning model.modelName + " info saved."
					(error) => 
						for prop,array of error.errors
							@notify.warning message for message in array
				)			
		
`export default ApplicationRoute`