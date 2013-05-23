Collection = require './base/collection'
Model = require './base/model'

module.exports = class Database 

  getUser: ->
    data = [
      id: 1
      nome: "Thales Machado"
      peso: "90Kg"
      facebook: "https://www.facebook.com/thalescmachado"
      foto: "https://fbcdn-sphotos-h-a.akamaihd.net/hphotos-ak-ash3/564635_423364711069038_1753345752_n.jpg"
    ,
      id: 2
      nome: "Thales Brother Machado"
      peso: "90Kg"
      facebook: "https://www.facebook.com/thalescmachado"
      foto: "https://fbcdn-sphotos-h-a.akamaihd.net/hphotos-ak-ash3/564635_423364711069038_1753345752_n.jpg"
    ,
      id: 3
      nome: "Jade Manesco"
      peso: "57Kg"
      facebook: "https://www.facebook.com/jajaeuvou"
      foto: "https://fbcdn-sphotos-h-a.akamaihd.net/hphotos-ak-ash3/68505_511054702290131_1002339344_n.jpg"
    ]

    return new Collection(data, model: Model)

