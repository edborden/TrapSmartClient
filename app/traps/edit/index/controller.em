class TrapsEditIndexController extends Ember.Controller

	actions:
		destroyTrap: ->
			@transitionToRoute 'admin.customers.edit',@model.company
			@model.destroyRecord()

`export default TrapsEditIndexController`