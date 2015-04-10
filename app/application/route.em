class ApplicationRoute extends Ember.Route

	beforeModel: -> 
		if localStorage.trapSmartToken
			@session.openWithToken(localStorage.trapSmartToken).then(
				(success) =>
					@sessionSuccessHandler()
				(error) =>
					@sessionSuccessHandler()
					@transitionTo 'index'
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
					@notify.danger success					
					@transitionTo 'index'
					Ember.$('[data-toggle="tooltip"]').tooltip()
				(errors) =>
					@transitionTo 'index'
					@send 'errors',errors.errors			
			)	
		logout: ->
			@transitionTo 'loading'
			@session.close().then => 
				@transitionTo 'index'
				@notify.danger "Logged out successfully."
		save: (model) ->
			if model.isDirty
				model.save().then(
					(success) => @notify.danger model.modelName + " saved."
					(errors) => @send 'errors', errors.errors
				)

		destroyNotification: (notification) ->
			notification.destroyRecord()

		errors: (errors) -> 
			for prop,array of errors
				@notify.danger message for message in array

`export default ApplicationRoute`