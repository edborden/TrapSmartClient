`import EmberValidations from 'ember-validations'`

class ApplicationController extends Ember.Controller with EmberValidations.Mixin

	#login form
	email: null
	password: null

	actions:
		loginClick: ->
			if @isValid
				user = {email:@email,password:@password}
				@send 'login',user
			else
				@notify.warning @errors.email.firstObject				

	validations:
		email:
			format: 
				with: /^([\w.-]+)@([\w.-]+)\.([a-zA-Z.]{2,6})$/i
				message: "Doesn't look like a valid email. Please try again."


`export default ApplicationController`