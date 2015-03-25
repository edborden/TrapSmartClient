attr = DS.attr

class Trap extends DS.Model
	name: attr()
	hardwareId: attr()
	company: DS.belongsTo 'company'
	modelName: "Trap"
	location: DS.belongsTo 'location'

`export default Trap`