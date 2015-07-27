# App
App = -> 
  @routes()

# Initialize
App.prototype.init = -> 
  @set_libs()
  Router.dispatch()

# Configure routes
App.prototype.routes = -> 
  Router.connect "@home", -> 
    new Home()
  Router.connect "@about", -> 
    new About()

# Set libs
App.prototype.set_libs = -> 
  $(document).foundation()
  FastClick.attach(document.body)

window.App = App