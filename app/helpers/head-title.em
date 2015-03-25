helper = Ember.Handlebars.makeBoundHelper (title) ->
	Ember.$('head').find('title').text(title)
	return

`export default helper`