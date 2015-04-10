attr = DS.attr

class Trap extends DS.Model
	name: attr()
	hardwareId: attr()
	company: DS.belongsTo 'company'
	modelName: "Trap"
	location: DS.belongsTo 'location'
	notifications: DS.hasMany 'notification'
	status: attr()
	statusUpdated: attr()

`export default Trap`