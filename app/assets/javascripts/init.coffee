# using App as a namespace for our various javascript stuff per this post:
# http://brandonhilkert.com/blog/organizing-javascript-in-rails-application-with-turbolinks/
window.App ||= {}

App.init = ->
  # could put some cool application wide init stuff in here, like if i only wanted to load sections
  # of bootstrap

$(document).on "page:change", ->
  App.init()