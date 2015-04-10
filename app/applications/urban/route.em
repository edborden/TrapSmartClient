`import RouteMetaMixin from 'trap-smart-client/mixins/route-meta'`
`import TitleTagMixin from 'trap-smart-client/mixins/title-tag'`

class ApplicationsUrbanRoute extends Ember.Route

	titleTag: "TrapSmart Urban Trappers Humane Live Traps System - Feral Cats"
	meta: ->
		description: "Remote monitoring system with real time alerts for urban trappers. Humane, effective trapping when you need to get to there fast!"

`export default ApplicationsUrbanRoute`