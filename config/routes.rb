Rails.application.routes.draw do
  get("/", {:controller => "calculator", :action => "home"})
  get("pages_templates/square_new", {:controller => "calculator", :action => "square"})
  get("pages_templates/results", {:controller => "calculator", :action => "square"})
end
