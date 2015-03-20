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
		#@keen.log_session()
		Ember.$(".center-spinner").hide()

	actions:
		login: (user) -> 
			@transitionTo 'loading'
			@session.openWithUser(user).then(
				(success) =>
					@notify.warning success					
					@transitionTo 'index'
				(error) =>
					@notify.warning error
			)					
		
`export default ApplicationRoute`