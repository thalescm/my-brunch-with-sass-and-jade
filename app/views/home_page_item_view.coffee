template = require './templates/home_item'
View = require 'views/base/view'

module.exports = class HomePageItemView extends View
  autoRender: yes
  template: template
  className: 'home_page'

  getTemplateData: ->
    @model.attributes