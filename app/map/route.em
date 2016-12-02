class MapRoute extends Ember.Route

	model: ->
		traps = @session.me.company.traps.getEach 'location'

		
`export default MapRoute`