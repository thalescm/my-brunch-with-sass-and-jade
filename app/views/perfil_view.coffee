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