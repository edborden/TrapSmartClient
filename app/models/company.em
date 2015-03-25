attr = DS.attr

class Company extends DS.Model
	name: attr()
	users: DS.hasMany 'user'
	address: attr()
	locality: attr()
	region: attr()
	postcode: attr()
	modelName: "Company"
	traps: DS.hasMany 'trap'

`export default Company`