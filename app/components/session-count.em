class SessionCountComponent extends Ember.Component

	keen: Ember.inject.service()

	didInsertElement: ->
		Keen.ready =>
			@keen.client.draw @keen.sessionWeekQuery, @element, 
				title:"Active users, past 7 days"
		
`export default SessionCountComponent`