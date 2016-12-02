`import EmberValidations from 'ember-validations'`

class ApplicationController extends Ember.Controller with EmberValidations

	#login form
	email: null
	password: null

	actions:
		loginClick: ->
			if @isValid
				user = { email: @email.toLowerCase(), password: @password }
				@send 'login',user
			else
				@send 'errors',{email:@errors.email}

	validations:
		email:
			format: 
				with: /^([\w.-]+)@([\w.-]+)\.([a-zA-Z.]{2,6})$/i
				message: "Doesn't look like a valid email. Please try again."


`export default ApplicationController`