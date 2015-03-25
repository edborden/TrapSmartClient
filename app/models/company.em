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
	trapSmart: ~> @id is '1'
	showInIndex: ~> not @trapSmart and not @isNew
	premium: attr 'boolean'

`export default Company`