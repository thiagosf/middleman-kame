# Routing
Router = 

  # All routes
  routes: []

  # Add new route
  connect: (name, fn) ->
    @routes.push [name, fn]

  # Dispatch route
  dispatch: -> 
    current_slug = $("body").data("slug")
    for route in @routes
      if route[0].indexOf("@") == 0 && route[0] == "@"+current_slug
        route[1].call() 

window.Router = Router