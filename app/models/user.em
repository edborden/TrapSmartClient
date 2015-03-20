attr = DS.attr

class User extends DS.Model
	name: attr()
	email: attr()
	password: attr()

`export default User`