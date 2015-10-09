class AdminCustomersEditController extends Ember.Controller

	hardwareId: null

	actions:
		addTrap: ->
			trap = @store.createRecord 'trap', {company:@model,hardwareId:@hardwareId}
			@send 'save',trap
			@hardwareId = null

		destroyCompany: ->
			@model.destroyRecord()
			@transitionToRoute 'admin.customers'

`export default AdminCustomersEditController`