# App
App = -> 
  @routes()

# Initialize
App.prototype.init = -> 
  @setLibs()
  @loadFonts()
  Router.dispatch()

# Configure routes
App.prototype.routes = -> 
  Router.connect "@home", -> 
    new Home()
  Router.connect "@about", -> 
    new About()

# Set libs
App.prototype.setLibs = -> 
  $(document).foundation()
  FastClick.attach(document.body)

# Google fonts
App.prototype.loadFonts = -> 
  WebFont.load 
    google: 
      families: ['PT Serif']

window.App = App