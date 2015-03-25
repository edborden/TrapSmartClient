helper = Ember.Handlebars.makeBoundHelper (description) ->
	Ember.$('head').append "<meta name='description' content='test'"
	return

`export default helper`