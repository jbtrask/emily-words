# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'ready', ->

  WebFont.load
      google:
        families: ['Open Sans']
      active: ->
        $('.letter').css({visibility: 'visible', opacity: '0.0'}).animate({opacity: 1.0}, 1618.03399)

