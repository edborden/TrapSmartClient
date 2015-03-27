`import EmberValidations from 'ember-validations'`

class CompanyController extends Ember.Controller with EmberValidations.Mixin

	name:null
	company:null
	email:null
	phone:null
	message:null

	actions:
		sendContact: ->
			if @isValid
				contact = @store.createRecord 'contact', {name:@name,company:@company,email:@email,phone:@phone,message:@message}
				@send 'save',contact
				@name=null
				@company=null
				@email=null
				@phone=null
				@message=null
			else
				@send 'errors',{email:@errors.email}

	validations:
		email:
			format: 
				with: /^([\w.-]+)@([\w.-]+)\.([a-zA-Z.]{2,6})$/i
				message: "Doesn't look like a valid email. Please try again."


`export default CompanyController`