CollectionView = require 'views/base/collection_view'
HomePageItemView = require 'views/home_page_item_view'

module.exports = class HomeCollectionView extends CollectionView
  autoRender: yes
  containerMethod: 'append'
  itemView: HomePageItemView


