`import Ember from 'ember'`
 
# Route mixin for setting head meta tags on transition into/out of route
#
# @example How to set meta tags on a route
#   App.ExampleRoute = Ember.Route.extend App.RouteMetaMixin,
#     meta: ->
#       return
#         meta_property_name1: meta_value1
#         meta_property_name2: meta_value2
 
RouteMetaMixin = Ember.Mixin.create
  setMeta: (meta)->
    # don't set meta if route is no longer active
    return unless @router.isActive(@routeName)
    $head = Ember.$('head')
    $metaProto = Ember.$('<meta></meta>')
    $newMetaValues = []
    selectors = []
    _.each(meta, (meta_entries,meta_type)->
      $newMetaValues.pushObjects(
        _.values(_.mapValues(meta_entries, (value, key)->
          selectors.pushObject("meta[#{meta_type}=\"#{key}\"]")
          $metaProto.clone().attr(meta_type, key).attr('content', value)
          )
        )
      )
    )
    $head.append($newMetaValues)
    @set('currentMetaSelectors', selectors)
 
  clearMeta: ()->
    selectors = @get('currentMetaSelectors')
    return unless selectors
    $head = Ember.$('head')
    $head.find(selectors.join(',')).remove()
    @set('currentMetaKeys', null)
 
  _runSetMeta: ->
    Ember.run.next =>
      @setMeta @meta() if @meta?
 
  actions:
    #
    # didTransition will take care of setting meta
    # if including route implements a meta method
    #
    didTransition: ->
      @_super.apply(@, arguments)
      @_runSetMeta()
      true # bubble
 
    willTransition: (transition)->
      @_super.apply(@, arguments)
      @clearMeta()
      true # bubble
 
    resetMeta: ->
      @clearMeta()
      @_runSetMeta()
 
      false # do not bubble - handled here
 
`export default RouteMetaMixin`