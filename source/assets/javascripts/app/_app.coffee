App = -> 
  @name = "App"
  @version = "1.0.0"

App.prototype.init = -> 
  console.log @name, ".init"
  console.log @version if @version?
  Utils.scrollTo 50

window.App = App