`import Base from 'ember-validations/validators/base'`

class PhoneValidator extends Base

	call: ->
		unless PhoneFormat.isValidNumber @model.get(@property),'US'
			@errors.pushObject "not a phone number"

`export default PhoneValidator`