module.exports = (match) ->
  match '', 'home#index'
  match 'home', 'home#index'
  match 'jason', 'home#jason'
  match 'perfil/:id', 'home#perfil'