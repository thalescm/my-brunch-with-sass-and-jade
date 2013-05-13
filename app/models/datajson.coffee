Collection = require './base/collection'
Model = require './base/model'
Chaplin = sys = require 'chaplin'

module.exports = class DataJson extends Chaplin.Collection
  _.extend @prototype, Chaplin.SyncMachine

  model:Model

  # Custom fetch method which warrents
  # the sync machine
  fetch: =>

  #Set the machine into `syncing` state
    @beginSync()

   # Do something interesting like calling
   # a 3rd party service
    $.get 'http://localhost:3333/getme.json', @processPosts, 'json'

  processPosts: (response) =>
    # Exit if for some reason this collection was
    # disposed prior to the response
    return if @disposed

    # Update the collection
    @reset(if response then response else [])



    # Set the machine into `synced` state
    @finishSync()