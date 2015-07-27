Utils =
  scrollTo: (position) ->
    console.log position
    $('body,html').animate({scrollTop: position})

window.Utils = Utils