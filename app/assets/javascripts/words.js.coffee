# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'ready', ->

  backgroundColor = $('body').css 'background-color'

  highlightEmily = ->
    $(".row[data-idx=\"2\"] .letter[data-idx=\"#{idx}\"]").css({backgroundColor: backgroundColor}) for idx in [0..4]

  highlightWord = ->

    $(".letter").css
      backgroundColor: 'white';

    if Math.random() > 0.5

      console.log 'horizontal'

      row = parseInt(Math.random() * 7)
      row++ if row >= 2
      while 0 == $(".row[data-idx=\"#{row}\"] .letter.across").length
        row = parseInt(Math.random() * 7)
        row++ if row >= 2

      console.log "row #{row}"

      $(".row[data-idx=\"#{row}\"] .letter.across").css
        backgroundColor: backgroundColor

      highlightEmily()

    else

      console.log 'vertical'

      column = parseInt(Math.random() * 12)
      while 0 == $(".letter[data-idx=\"#{column}\"].down").length
        column = parseInt(Math.random() * 12)

      console.log "row #{column}"

      $(".letter[data-idx=\"#{column}\"].down").css
        backgroundColor: backgroundColor

      highlightEmily()

  WebFont.load
      google:
        families: ['Open Sans']
      active: ->

        $('.letter').css
          visibility: 'visible'

        window.setInterval(highlightWord, 3141.59)




