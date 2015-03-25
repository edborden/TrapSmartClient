class AdminCustomersNewController extends Ember.Controller

	actions:
		submit: ->
			@model.company.save().then => @model.user.save().then => @transitionToRoute 'admin.customers.index'

`export default AdminCustomersNewController`