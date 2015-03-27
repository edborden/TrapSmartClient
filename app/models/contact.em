attr = DS.attr

class Contact extends DS.Model

	name:attr()
	company:attr()
	email:attr()
	phone:attr()
	message:attr()
	modelName:"Contact Form"

`export default Contact`