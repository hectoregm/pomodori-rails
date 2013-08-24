window.Pomodori =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    Backbone.history.start()

$(document).ready ->
  Pomodori.initialize()
