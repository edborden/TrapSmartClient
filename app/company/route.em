class CompanyRoute extends Ember.Route

	setupController: (controller,model) ->
		@_super(controller,model)
		@meta.update
			title: "About TrapSmart Live Trap Monitoring System | Contact TrapSmart"
			description: "TrapSmart offers advanced wireless and communication  technology to provide a failsafe TrapSmart system for all types of trappers. TrapSmart offers real time trap alerts, custom solutions and great service."

`export default CompanyRoute`