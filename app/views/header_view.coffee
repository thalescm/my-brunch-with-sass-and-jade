View = require 'views/base/view'
template = require 'views/templates/header'

module.exports = class HeaderView extends View
  template: template
  id: 'header'
  className: 'header'
  container: '#header-container'
  autoRender: true

  initialize: =>
    super

    @delegate 'click', '.js_welcome', @welcomeClicked
    # @subscribeEvent 'loginStatus', @render
    # @subscribeEvent 'startupController', @render

  attach: ->
    super
    # $(".position").position
    #   my: "rigth center"
    #   at: "rigth bottom"
    #   of: "#digite"

  welcomeClicked: ->
    @publishEvent '!router:route', ''