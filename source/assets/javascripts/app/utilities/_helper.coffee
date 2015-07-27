# Useful functions
Helper =

  # Move scroll
  scrollTo: (position, duration) ->
    duration = 700 unless duration
    if (duration == 0) 
      $("html, body").scrollTop position
    else 
      $("html, body").animate({ scrollTop: position }, duration, 'swing')

window.Helper = Helper