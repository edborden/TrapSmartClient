class ApplicationsWildlifeRoute extends Ember.Route

	setupController: (controller,model) ->
		@_super(controller,model)
		@meta.update
			title: "TrapSmart Wildlife Control Wildlife Live Trap Alerts Real Time Notification"
			description: "Advanced wildlife control monitoring system use wireless and satellite communications to provide real time trap alerts. Message sent to you about status."

`export default ApplicationsWildlifeRoute`