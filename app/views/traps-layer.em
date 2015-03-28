class TrapMarker extends EmberLeaflet.MarkerLayer with EmberLeaflet.PopupMixin
	popupViewClass: Ember.View.extend({templateName: 'trap-popup'})
		
class TrapsLayer extends EmberLeaflet.CollectionLayer
	content: ~> @controller.model.getEach 'location'
	itemLayerClass: TrapMarker


`export default TrapsLayer`