template = require './templates/perfil'
View = require 'views/base/view'

module.exports = class PerfilView extends View
  autoRender: yes
  template: template
  container: '.home-page-container'
  className: 'perfil'

  getTemplateData: ->
    super
    @model.attributes

  attach: ->
    super
    $(".perfil").transition({x:'100%'}, 1000, 'ease')
    $(".imagem").transition({perspective:'100px',rotateY:'180deg',delay:1000}, 1000, 'ease')