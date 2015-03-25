class NewsRoute extends Ember.Route

	model: -> 
		[
			{
				id: 1
				title: "TrapSmart Helps Wildlife Control with Coyotes in NY"
				image: "http://res.cloudinary.com/hyvc2v8ju/image/upload/t_post/TrapSmart-Sensor-Coyote-Humane_cbenqg.jpg"
				body: "<p>Coyotes sightings are up this year and wildlife control professionals rely on TrapSmart to get the job done – quickly and humanely.  <a href='https://www.youtube.com/watch?v=nZvSb_9eO7o'>The following piece recently aired on CBS</a> about coyote sightings in Chappaqua, NY, which featured one of our customers using our sensor system."
				date: "March 6, 2015"
				type: "research"
			},
			{
				id: 2
				title: "TrapSmart Helps to Catch Urban Bobcat"
				image: "http://res.cloudinary.com/hyvc2v8ju/image/upload/t_post/Bobcat_TrapSmart_n3klfj.png"
				body: "<p>The Urban Bobcat Study was initiated in the Dallas Forth Worth Metroplex area in January 2014. The goal is to contribute to urban carnivore conservation practices by gaining spatial data on bobcats in an urban area. The data will enhance future management decisions on the city development while incorporating the conservations of its wildlife.</p><p>\"Thanks to the TrapSmart transmitters, we received a text message that a trap door had closed around 1:15 in the afternoon, and were on the scene within an hour,” said Julie Golla, Graduate Student, Quinney College of Natural Resources, Utah State University. “The bobcat was caught in a trap under a road bridge, with heavy construction taking place a mere 30 meters away. This was an extraordinary scenario for a bobcat capture.\"</p>"
				date: "March 6, 2015"
				type: "research"
			},
			{
				id:3
				title: "TrapSmart Improves Flight and Raptor Safety at Vancouver International Airport"
				image: "http://res.cloudinary.com/hyvc2v8ju/image/upload/t_post/PastedGraphic-11_ywquzd.jpg"
				body: "<p>\"The TrapSmart system is a key element in the raptor trapping program at YVR. With real time alerts via text and email to several people on the team, birds in the trap are dealt with promptly because the alert lets our team know exactly which trap closed. Then the first available biologist on the team is dispatched to the airport to handle the bird. Alerts include trap activity, low battery and connection status so everyone knows when a trap is closed and when the battery needs to be replaced. TrapSmart was able to make an adjustment to accommodate a solar panel to extend the charge of the battery so there is much less maintenance needed.\"</p><p>Read the full article <a href='http://res.cloudinary.com/hyvc2v8ju/image/upload/v1426623316/TrapSmartGary_fsaczw.pdf'>here</a>"
				date: "June 7th, 2013"
				type: "pest"
			},
			{
				id:4
				title: "Pennsylvania OK's electronic remote trap checking"
				image: "http://res.cloudinary.com/hyvc2v8ju/image/upload/t_post/Pennsylvania_State_Capitol_a9649o.jpg"
				body: "<p>On June 4, 2013 THE GENERAL ASSEMBLY OF PENNSYLVANIA HOUSE BILL amended an act and approved electronic trap monitoring in the State. House Bill No. 891 states:</p><blockquote>It shall not be unlawful for a properly permitted nuisance wildlife control operator to use electronic means to the check on the status of a trap while acting persuant to the authority granted under the permit.</blockquote><p>This is great news for wildlife trappers and pest control professionals. With the right remote electronic trapping system, you will never again waste your precious time, money and energy checking empty traps.</p>"
				date: "June 7th, 2013"
				type: "pest"
			}
		]

`export default NewsRoute`