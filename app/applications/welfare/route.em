class ApplicationsWelfareRoute extends Ember.Route

	setupController: (controller,model) ->
		@_super(controller,model)
		@meta.update
			title: "TrapSmart for TNR | Free Roaming Cats |Feral Cats"
			description: "TrapSmart sends an alert to your smartphone or signals you with a flashing light when a cat goes into a trap. Eliminates the need to constantly watch traps. Save time and less stress to capture."

`export default ApplicationsWelfareRoute`