class ApplicationsUrbanRoute extends Ember.Route

	setupController: (controller,model) ->
		@_super(controller,model)
		@meta.update
			title: "TrapSmart Urban Trappers Humane Live Traps System - Feral Cats"
			description: "Remote monitoring system with real time alerts for urban trappers. Humane, effective trapping when you need to get to there fast!"

`export default ApplicationsUrbanRoute`