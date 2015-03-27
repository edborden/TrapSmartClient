class SettingsGlobalnotifsRoute extends Ember.Route

	model: -> @session.me.company	

	actions:
		addNotification: (notificationParams) ->
			notificationParams.company = @session.me.company
			@store.createRecord('notification',notificationParams).save()
		
`export default SettingsGlobalnotifsRoute`