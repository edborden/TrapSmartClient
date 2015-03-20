class SessionService extends Ember.Object

	loggedIn: ~> @model?
	model: null
	token: ~> if @model? then @model.token else null
	me: ~> @model.user
	
	openWithUser: (user) ->
		return new Ember.RSVP.Promise (resolve,reject) =>
			@store.createRecord('session', user).save().then( 
				(response) =>
					@openWithSession response
					resolve "Logged in successfully"
				(error) => 
					reject error.errors.email.firstObject
			)

	openWithSession: (session) ->
		@model = session
		localStorage.trapSmartToken = @token

	openWithToken: (token) ->
		@store.find('session', {token:token}).then( 
			(response) => @openWithSession response
			(error) => 
				console.log 'openWithToken error',error
				localStorage.clear() if error?
		)

	close: ->
		localStorage.clear()
		@model = null

`export default SessionService`