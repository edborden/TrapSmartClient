class MarkersLayer extends EmberLeaflet.CollectionLayer
	content: ~> @controller.model.getEach 'location'
	itemLayerClass: EmberLeaflet.MarkerLayer

class TrapsMapView extends EmberLeaflet.MapView

	childLayers: [MarkersLayer,EmberLeaflet.DefaultTileLayer,]

	didCreateLayer: ->
		@_super()
		if @markerArray.length > 0
			bounds = L.latLngBounds @markerArray
			@_layer.fitBounds bounds


	markerArray: ~>
		markerArray = []
		@controller.model.forEach (trap) ->
			markerArray.push trap.location.location
		return markerArray

`export default TrapsMapView`