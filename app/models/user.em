attr = DS.attr

class User extends DS.Model
	name: attr()
	email: attr()
	password: attr()
	newPassword: attr()
	company: DS.belongsTo 'company'
	globalAdmin: attr 'boolean'
	admin: attr 'boolean'
	modelName: "User"

`export default User`