class NotificationAdderComponent extends Ember.Component

	adding:false
	action:null
	mode:null
	target:null
	addNotification: "addNotification"

	actions:
		add: -> @adding=true
		save: ->
			@sendAction 'addNotification',{mode:@mode,target:@target}
			@adding=false

	modes: ["Email","Text"]

	keyUp: -> @formatLocalTarget()

	+observer mode
	onModeChange: -> @formatLocalTarget()

	formatLocalTarget: ->
		if @mode is 'Text' and @target isnt null
			@target = @target.slice 0,14
			@target = PhoneFormat.formatLocal 'US',@target		
		
`export default NotificationAdderComponent`