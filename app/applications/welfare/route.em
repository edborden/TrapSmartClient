`import RouteMetaMixin from 'trap-smart-client/mixins/route-meta'`
`import TitleTagMixin from 'trap-smart-client/mixins/title-tag'`

class ApplicationsWelfareRoute extends Ember.Route

	titleTag: "Animal Welfare | TrapSmart for TNR | Animal Control"
	meta: ->
		description: "TrapSmart provides animal welfare professionals with humane solutions to control free-roaming cat populations through Trap, Neuter, Return."

`export default ApplicationsWelfareRoute`