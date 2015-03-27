class TrapsEditNotificationsController extends Ember.Controller

	actions:
		addNotification: (notificationParams) ->
			notificationParams.trap = @model
			@store.createRecord('notification',notificationParams).save()
		
`export default TrapsEditNotificationsController`