class ApplicationsWildlifeRoute extends Ember.Route

	setupController: (controller,model) ->
		@_super(controller,model)
		@meta.update
			title: "Wildlife Control Wildlife Live Trap Alerts | TrapSmart Real Time Notification"
			description: "Never check an empty trap. Advanced wildlife monitoring system use advanced communications to provide real time trap alerts so you always know the status of your trap. Text, email or a flashing light tells you when to tend to a trap."

`export default ApplicationsWildlifeRoute`