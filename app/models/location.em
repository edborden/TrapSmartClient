attr = DS.attr

class Location extends DS.Model
	lat: attr "number"
	lng: attr "number"
	location: ~> L.latLng @lat, @lng
	trap: DS.belongsTo 'trap'
	popupContent: ~> "test"

`export default Location`