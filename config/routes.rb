Rails.application.routes.draw do
  get("/", {:controller => "calculator", :action => "home"})
  get("square_form", {:controller => "calculator", :action => "square_form"})
  get("/square_results", {:controller => "calculator", :action => "square"})
  get("/sqrt_form", {:controller => "calculator", :action => "sqrt_form"})
  get("/sqrt_results", {:controller => "calculator", :action => "square_root"})
  get("/payment_form", {:controller => "calculator", :action => "payment_form"})
  get("/payment_results", {:controller => "calculator", :action => "payment"})
  get("/random_form", {:controller => "calculator", :action => "random_form"})
  get("/random_results", {:controller => "calculator", :action => "random"})
end
