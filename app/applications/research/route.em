class ApplicationsResearchRoute extends Ember.Route

	setupController: (controller,model) ->
		@_super(controller,model)
		@meta.update
			title: "TrapSmart Humane realtime time trap alerts system for wildlife research and biologists"
			description: "Get a customized, effective system to humanely trap wildlife for research, protection and relocation. TrapSmart real time alerts and information has helps you trap more efficiently and minimizes stress on the catch."

`export default ApplicationsResearchRoute`