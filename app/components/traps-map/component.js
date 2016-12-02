import EmberLeafletComponent from 'ember-leaflet/components/leaflet-map';
import MarkerCollectionLayer from 'ember-leaflet/layers/marker-collection';
import MarkerLayer from 'ember-leaflet/layers/marker';
import TileLayer from 'ember-leaflet/layers/tile';
import PopupMixin from 'ember-leaflet/mixins/popup';

const TrapMarker = MarkerLayer.extend(PopupMixin, {
  popupContent: Ember.computed(function() {
    return this.get('content').get('trap').get('name');
  })
});

const markers = MarkerCollectionLayer.extend({
  contentBinding: 'controller.content',
  itemLayerClass: TrapMarker
});

const tiles = TileLayer.extend({
  tileUrl: 'https://{s}.tiles.mapbox.com/v4/trapsmart.lj3if5m2/{z}/{x}/{y}.png?access_token=pk.eyJ1IjoidHJhcHNtYXJ0IiwiYSI6IjI2SEFKTGMifQ.n-ulycHuOJE0FBV9nfyjJw'
});

export default EmberLeafletComponent.extend({
  childLayers: [markers, tiles],

  didInsertElement() {
    this._super();
    let content = this.get('content');
    if (content.length > 0) {
      let locations = content.getEach('location');
      let bounds = L.latLngBounds(locations);
      this._layer.fitBounds(bounds);
    }
  }

});

