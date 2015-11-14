class App.Home
  constructor: (@jumbotron) ->

  render: ->
    @jumbotron.height($(window).height())

# adjust when the page is loaded
$(document).on "page:change", ->
  return unless $(".home.home").length > 0

  home = new App.Home $(".jumbotron")
  home.render()

# and when it's resized
$(window).on "resize", ->
  return unless $(".home.home").length > 0

  home = new App.Home $(".jumbotron")
  home.render()