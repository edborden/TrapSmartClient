class ApplicationsPestRoute extends Ember.Route

	setupController: (controller,model) ->
		@_super(controller,model)
		@meta.update
			title: "Expand Pest Control Services with TrapSmart Remote Monitoring"
			description: "Offer pest trapping with confidence. A TrapSmart remote monitor provides real time alerts so you can remove the pest once as soon as it is caught."

`export default ApplicationsPestRoute`