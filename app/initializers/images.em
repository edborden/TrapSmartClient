`import config from 'trap-smart-client/config/environment'`

initializer =
	name: "images"
	initialize: ->
		images = [
			"carousel1.jpg",
			"carousel2.png",
			"carousel3.jpg",
			"deluxe.jpg",
			"diagram.jpg",
			"logo.png",
			"pest.jpg",
			"research.jpg",
			"urban.jpg",
			"welfare.jpg",
			"wildlife.jpg",
			"worldwide.jpg"
		]

		urlPrefix = switch config.environment
			when 'development' then "../assets/"
			else ""

		for image in images
			preloadImage = new Image()
			preloadImage.src = urlPrefix + "images/" + image

`export default initializer`