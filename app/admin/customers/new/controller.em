class AdminCustomersNewController extends Ember.Controller

	actions:
		submit: ->
			@model.company.save().then => 
				@send 'save', @model.user
				@transitionToRoute 'admin.customers.index'

`export default AdminCustomersNewController`