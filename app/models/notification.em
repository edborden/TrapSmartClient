attr = DS.attr

class Notification extends DS.Model
	mode: attr()
	target: attr()
	company: DS.belongsTo 'company'
	trap: DS.belongsTo 'trap'

`export default Notification`