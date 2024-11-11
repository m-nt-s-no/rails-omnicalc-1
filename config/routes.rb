Rails.application.routes.draw do
  get("/", {:controller => "calculator", :action => "home"})
  get("/square_new", {:controller => "calculator", :action => "home"})
  get("/results", {:controller => "calculator", :action => "square"})
end
