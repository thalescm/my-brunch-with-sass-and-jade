View = require 'views/base/view'
template = require 'views/templates/home-father'
HomeCollectionView = require 'views/home_collection_view'
Collection = require 'models/base/collection'
Model = require 'models/base/model'
PerfilView = require 'views/perfil_view'


module.exports = class HomePageView extends View
  autoRender: yes
  container: '.home-page-container'
  template: template
  className: 'home-father'

  initialize: ->
    super
    @delegate 'click', '.js_button', @buttonClicked
    # @delegate 'click', '.js_tags', @tagClicked
    @delegate 'tap', @swipeDone

  attach: ->
    super
    # hammer = new Hammer(document.getElementByClass("home-father"))
    # removeSubview\
    $('.perfil').css("display", "none")
    $(".home-father").transition({y:'100%'}, 750, 'ease')
    @subview 'home-collection', new HomeCollectionView
      container: '.subviews-boxlist'
      collection: new Collection()

  swipeDone: ->
    alert 'yo'

  tagClicked: (el)->
    obj = @collection.where({nome: $(el.target).text()})
    console.log obj
    # subview ''

  buttonClicked: (el)->
    $(el.target).css({transformOrigin:'5% 50%'})
    $(el.target).transition({rotate:'30deg'})
    $(el.target).transition({rotate:'0deg'})

    input = $(".js_input").val()
    obj = @collection.where({nome: input})
    subViewObj = @subview 'home-collection'

    if(input != "")
      if(obj.length > 0 && obj.length <2)
        @foundMatch()
        col = new Collection(obj, model: Model)
        console.log col
        subViewObj.collection = col
        subViewObj.renderAllItems()
      else 
        $('.js_notfound').css("opacity", 1)
        #$('.js_notfound').text("Amigo nao encontrado, tente novamente!")
        col = new Collection()
        subViewObj.collection = col
        subViewObj.renderAllItems()
    else 
      subViewObj.collection = @collection
      subViewObj.renderAllItems()
      @foundMatch()

  foundMatch: ->
    $('.js_notfound').css("opacity", 0)

  scrollDown: ->
    $('home-father').css("opacity", 0)
    $('home-father').slideDown('slow')

  # attach: ->
  #   super
  #   @subview 'home-collection', new HomeCollectionView
  #     container: '.box-list'
  #     collection:@collection