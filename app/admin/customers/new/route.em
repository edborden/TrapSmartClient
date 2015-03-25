class AdminCustomersNewRoute extends Ember.Route

	model: -> 
		company = @store.createRecord 'company'
		user = @store.createRecord 'user', {company:company,admin:true}
		return {company: company,user: user}


`export default AdminCustomersNewRoute`