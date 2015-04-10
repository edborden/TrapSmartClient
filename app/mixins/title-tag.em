TitleTagMixin = Ember.Mixin.create

  actions:

    didTransition: ->
      @_super.apply(@, arguments)
      window.document.title = @titleTag if @titleTag
      true # bubble
 
    willTransition: (transition)->
      @_super.apply(@, arguments)
      window.document.title = "TrapSmart Remote Trap Monitoring" if @titleTag
      true # bubble

`export default TitleTagMixin`