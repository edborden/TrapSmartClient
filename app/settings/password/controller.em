`import EmberValidations from 'ember-validations'`

class SettingsPasswordController extends Ember.ObjectController with EmberValidations

	actions:
		saveModel: ->
			if @isValid
				@send 'save',@model
			else
				@send 'errors',{password:@errors.password,newPassword:@errors.newPassword,newPasswordConfirmation:@errors.newPasswordConfirmation}

	validations:
		password:
			presence: {message: "Old password cannot be blank."}
		newPassword:
			confirmation: {message: "New password doesn't match confirmation."}
			presence: {message: "New password cannot be blank."}

`export default SettingsPasswordController`