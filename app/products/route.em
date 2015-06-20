class ProductsRoute extends Ember.Route

	setupController: (controller,model) ->
		@_super(controller,model)
		@meta.update
			title: "TrapSmart Remote Trap Products | Remote Trap Systems | GPS Trap Monitor"
			description: "TrapSmart offers real time alert systems that meet the needs of different types of trappers. Using different services, you get a system tailored to your needs. This minimizes costs so you only pay for what you need."

`export default ProductsRoute`