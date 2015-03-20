attr = DS.attr

class Session extends DS.Model
	token: attr()
	user: DS.belongsTo 'user'
	redirectUri: attr()

	email: attr()
	password: attr()

`export default Session`