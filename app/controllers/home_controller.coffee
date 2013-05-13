Controller = require 'controllers/base/controller'
HomePageView = require 'views/home-page-view'
Database = require 'models/database'
Collection = require 'models/base/collection'
DataJson = require 'models/datajson'
PerfilView = require 'views/perfil_view'

module.exports = class HomeController extends Controller
  historyURL: 'views/'

  index: ->
    
    db = new Database()

    @view = new HomePageView {collection:db.getUser()}



  jason: ->

    db = new DataJson()
    db.fetch()

    db.synced =>
      @view = new HomePageView {collection:db}

  perfil: (params)->
  
    db = new Database()
    col = db.getUser()
    obj = col.where({codigo: params.id})   

    if (obj.length > 0) 
      console.log obj[0]
      @view = new PerfilView
        model: obj[0]

