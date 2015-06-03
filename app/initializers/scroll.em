initializer =
	name:'scroll'
	initialize: ->
		Ember.Route.reopen
			activate: ->
				@_super()
				window.scrollTo(0,0)

`export default initializer`