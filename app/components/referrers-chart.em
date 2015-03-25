class ReferrersChartComponent extends Ember.Component

	keen: Ember.inject.service()

	didInsertElement: ->
		Keen.ready =>
			@keen.client.draw @keen.referrersQuery, @element, 
				title:"Referral sources, past 7 days"
		
`export default ReferrersChartComponent`