`import config from 'trap-smart-client/config/environment'`

class KeenService extends Ember.Service

	isProduction: ~> config.environment is 'production'

	client: ~> new Keen
		projectId: "550f012159949a1152b150c1"
		writeKey: "ff78ec855e4fd4075111bc619461282043a8b58132007511d48189c74318bcf874e20f4154600b58017a838c149199e287a601d34aa9baa7aa24b8826be3671db93e99e2a17f53a6ee8a4eac046a294a61ab7bc18973b23cb65f69972e5b7ce3c3efe3a1c45e242e4e19cb8a69c3801c"
		readKey: "c3bed97ab647869d897127a751e3a3210c4aae78b914d512f8c3542556a11b32eef4796a2ce58424e6f713a22d184b7cc4a6df5257441d02ef1434829122d34f6f04ca4b80a5b882581c66b0136615edd86643a2f8615043767a50e258b14c941e8308af44812a6af35ecb0279fb5ac9"
		protocol: "auto"
		host: "api.keen.io/3.0"
		requestType: "jsonp"

	logSession: ->
		if @isProduction
			@client.addEvent 'session', 
				#page: window.location.href
				#time: new Date().toISOString()
				referrer: document.referrer
				agent: window.navigator.userAgent
				user: @session.me.id

	sessionWeekQuery: ~>
		new Keen.Query "count_unique",
			eventCollection: "session",
			timeframe: "this_7_days",
			targetProperty: "user"

	referrersQuery: ~>
		new Keen.Query "count",
			eventCollection: "session",
			timeframe: "this_7_days",
			groupBy: "referrer"

`export default KeenService`