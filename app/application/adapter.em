`import config from 'trap-smart-client/config/environment'`

class ApplicationAdapter extends DS.ActiveModelAdapter

	session:Ember.inject.service()
	host: config.apiHostName

	#crossdomain
	ajax: (url, method, hash) -> 
		hash = hash || {}
		hash.crossDomain = true
		return @_super(url, method, hash)

	headers: ~>
		if @session.token?
			return {'Authorization': 'Bearer ' + @session.token }
		else
			return {}

`export default ApplicationAdapter`