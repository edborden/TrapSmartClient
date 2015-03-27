alreadyRun = false

initializer =
	name:'scroll'
	initialize: ->
		alreadyRun = true unless alreadyRun

		Ember.Route.reopen
			activate: ->
				@_super()
				window.scrollTo(0,0)

`export default initializer`