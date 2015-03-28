`import TileLayer from 'trap-smart-client/views/tile-layer'`
`import TrapsLayer from 'trap-smart-client/views/traps-layer'`

class TrapsMapView extends EmberLeaflet.MapView

	childLayers: [TrapsLayer,TileLayer]

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