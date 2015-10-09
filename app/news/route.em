class NewsRoute extends Ember.Route

	setupController: (controller,model) ->
		@_super(controller,model)
		@meta.update
			title: "News TrapSmart News | TrapSmart Resources"
			description: "Find out the latest news, access resources and learn about developments in the wildlife control industry."

	model: -> 
		[
			{
				id: 1
				title: "Smart Tech Saves Gardens and Groundhogs"
				image: "http://res.cloudinary.com/hyvc2v8ju/image/upload/v1444408946/Groundhogs-eat-flowers-Go-Green-Pest-Can-Help-670x270_wh3jby.jpg"
				body: "<p>Last week, a NJ country club owner in the area called me in a panic. “Our flowers are disappearing! My Phlox, Sedum and Shrub Roses are destroyed. The gardens are why people book us for weddings. I need help fast!”</p><p>According to the <a href='http://www.theweddingreport.com/' target='_blank'>Wedding Report</a>, September is the month with the highest demand for weddings in New Jersey. The weather is ideal and many flowers are in bloom. Wedding venues are booked solid and working hard to be sure everything is picture perfect – especially the gardens.</p><p>I knew what was happening. These flowers were all favorite menu selections of the garden dwelling groundhog (also known as a woodchuck). These critters are well known for their burrowing tactics and destructive garden behavior. Groundhogs eat about 1/3 of their body weight every day and increase their eating in the fall to build fat stores to get them through winter.</p><h4>Thank You TrapSmart™</h4><p>I jumped in my car and headed over to the country club to set a trap using a live trap equipped with the <a href='http://www.trapsmart.com' target='_blank'>TrapSmart </a>remote trap monitoring system. The TrapSmart system would send me a text message when the trap door closed so I would know immediately that an animal was caught.  Not only does this save me tons of time (as I do not have to drive 30 minutes to check the trap), it would also save the animal the stress of locked up in a cage during extreme heat – as this can be very dangerous to wildlife survival.</p><p>Assuring the owner not to worry, I headed to my next appointment. Before I even got there, my phone got a text message. The trap had fired.  I headed back, and lo and behold, there was a groundhog in the live trap! Thank you TrapSmart! I put the critter in my vehicle and set another live trap – just in case there was more than one on the property.  And, yes, I would release the groundhog according to NJ State regulations.</p><p>The following day I was once again alerted by TrapSmart that the trap had fired. I got to the club within the hour and got the animal to a safe place quickly. I just can’t say how much this system has helped me – saves me a ton of time. And it is also humane &#8211; as it minimizes the time the wildlife is in a trap – at 85° an animal needs to be released within a few hours. Thanks to TrapSmart I have never lost an animal due to time in a trap!</p><h4>More Than Groundhogs</h4><p>This job turned out to be pretty big as I removed a total of 12 groundhogs, 3 raccoons, and 1 skunk from the property. Now the club&#8217;s gardens will be ready for the upcoming season.  Everybody’s happy – me, the club, the garden &#8211; and the wildlife.</p><p>If you are a pest control professional and want to learn more about using TrapSmart, give me a call or send me an <a href='http://gogreenpestsolutions.com/contact/''>email</a>.</p><p>&nbsp;</p><p>Tom Watson</p><p>973-510-0673</p>"				
				date: "August 25, 2015"
				type: "pest"
			},
			{
				id: 2
				title: "TrapSmart Helps Wildlife Control with Coyotes in NY"
				image: "http://res.cloudinary.com/hyvc2v8ju/image/upload/t_post/TrapSmart-Sensor-Coyote-Humane_cbenqg.jpg"
				body: "<p>Coyotes sightings are up this year and wildlife control professionals rely on TrapSmart to get the job done – quickly and humanely.  <a href='https://www.youtube.com/watch?v=nZvSb_9eO7o'>The following piece recently aired on CBS</a> about coyote sightings in Chappaqua, NY, which featured one of our customers using our sensor system."
				date: "March 6, 2015"
				type: "research"
			},
			{
				id: 3
				title: "TrapSmart Helps to Catch Urban Bobcat"
				image: "http://res.cloudinary.com/hyvc2v8ju/image/upload/t_post/Bobcat_TrapSmart_n3klfj.png"
				body: "<p>The Urban Bobcat Study was initiated in the Dallas Forth Worth Metroplex area in January 2014. The goal is to contribute to urban carnivore conservation practices by gaining spatial data on bobcats in an urban area. The data will enhance future management decisions on the city development while incorporating the conservations of its wildlife.</p><p>\"Thanks to the TrapSmart transmitters, we received a text message that a trap door had closed around 1:15 in the afternoon, and were on the scene within an hour,” said Julie Golla, Graduate Student, Quinney College of Natural Resources, Utah State University. “The bobcat was caught in a trap under a road bridge, with heavy construction taking place a mere 30 meters away. This was an extraordinary scenario for a bobcat capture.\"</p>"
				date: "March 6, 2015"
				type: "research"
			},
			{
				id:4
				title: "TrapSmart Cover Story of Wildlife Control Technology"
				image: "assets/images/urban.jpg"
				body: "<p>\"When Tom Watson was racing from Vernon to Hackensack, across 45 miles of congested NJ highways, to check his wildlife traps, he just knew there had to be a better way. It was 2006, and gas prices were on the rise, along with increasing regulations on animal protection. Tom, a licensed pest control professional had recently founded Independent Pest Control and was finding it harder and harder to be profitable. Offering good customer service and keeping up with the legal requirement to visit traps once every 24 hours was making it really difficult to make a profit.\"</p><p>Read the full article <a href='http://res.cloudinary.com/hyvc2v8ju/image/upload/v1433446224/TrapSmartWCT2013_at8iqz.pdf'>here</a>"
				date: "October 21st, 2013"
				type: "pest"
			},
			{
				id:5
				title: "TrapSmart Improves Flight and Raptor Safety at Vancouver International Airport"
				image: "http://res.cloudinary.com/hyvc2v8ju/image/upload/t_post/PastedGraphic-11_ywquzd.jpg"
				body: "<p>\"The TrapSmart system is a key element in the raptor trapping program at YVR. With real time alerts via text and email to several people on the team, birds in the trap are dealt with promptly because the alert lets our team know exactly which trap closed. Then the first available biologist on the team is dispatched to the airport to handle the bird. Alerts include trap activity, low battery and connection status so everyone knows when a trap is closed and when the battery needs to be replaced. TrapSmart was able to make an adjustment to accommodate a solar panel to extend the charge of the battery so there is much less maintenance needed.\"</p><p>Read the full article <a href='http://res.cloudinary.com/hyvc2v8ju/image/upload/v1426623316/TrapSmartGary_fsaczw.pdf'>here</a>"
				date: "June 7th, 2013"
				type: "pest"
			},
			{
				id:6
				title: "Pennsylvania OK's electronic remote trap checking"
				image: "http://res.cloudinary.com/hyvc2v8ju/image/upload/t_post/Pennsylvania_State_Capitol_a9649o.jpg"
				body: "<p>On June 4, 2013 THE GENERAL ASSEMBLY OF PENNSYLVANIA HOUSE BILL amended an act and approved electronic trap monitoring in the State. House Bill No. 891 states:</p><blockquote>It shall not be unlawful for a properly permitted nuisance wildlife control operator to use electronic means to the check on the status of a trap while acting persuant to the authority granted under the permit.</blockquote><p>This is great news for wildlife trappers and pest control professionals. With the right remote electronic trapping system, you will never again waste your precious time, money and energy checking empty traps.</p>"
				date: "June 7th, 2013"
				type: "pest"
			}
		]

`export default NewsRoute`