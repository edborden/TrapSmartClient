attr = DS.attr

class Trap extends DS.Model
	name: attr()
	hardwareId: attr()
	company: DS.belongsTo 'company'
	modelName: "Trap"

`export default Trap`