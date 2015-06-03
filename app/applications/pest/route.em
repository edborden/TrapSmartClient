class ApplicationsPestRoute extends Ember.Route

	setupController: (controller,model) ->
		@_super(controller,model)
		@meta.update
			title: "TrapSmart Pest Control Expand Pest Control Services with TrapSmart"
			description: "Pest Control can outsmart pests with a TrapSmart remote monitor that provides real time alerts. Never waste your time checking an empty trap!"

`export default ApplicationsPestRoute`