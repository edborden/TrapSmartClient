`import EmberValidations from 'ember-validations'`

class NotificationAdderComponent extends Ember.Component with EmberValidations.Mixin

	adding:false
	mode:null
	target:null
	addNotification: "addNotification"
	sendErrors: 'errors'
	textMode: ~> @mode is 'Text'

	targetIsValidEmail: ~> 
		reg = /^([\w.-]+)@([\w.-]+)\.([a-zA-Z.]{2,6})$/i
		reg.test @target
	targetIsValidPhoneNumber: ~>
		PhoneFormat.isValidNumber @target,'US'

	actions:
		add: -> @adding=true
		save: ->
			if @isValid
				if @textMode
					if @targetIsValidPhoneNumber
						@sendNotification()
					else
						@sendAction 'sendErrors',{text:["Not a valid phone number."]}
				else
					if @targetIsValidEmail
						@sendNotification()
					else
						@sendAction 'sendErrors',{email:["Not a valid email."]}
			else
				@adding=false
				@sendAction 'sendErrors',{target:@errors.target}

	modes: ["Email","Text"]

	keyUp: -> @formatLocalTarget()

	formatLocalTarget: ->
		if @textMode and @target isnt null
			@target = @target.slice 0,14
			@target = PhoneFormat.formatLocal 'US',@target	

	validations:
		target:
			presence: true

	sendNotification: ->
		@sendAction 'addNotification',{mode:@mode,target:@target}
		@adding=false
		@target=null
		
`export default NotificationAdderComponent`