class ApplicationsWelfareRoute extends Ember.Route

	setupController: (controller,model) ->
		@_super(controller,model)
		@meta.update
			title: "Animal Welfare | TrapSmart for TNR | Animal Control"
			description: "TrapSmart provides animal welfare professionals with humane solutions to control free-roaming cat populations through Trap, Neuter, Return."

`export default ApplicationsWelfareRoute`