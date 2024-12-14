Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "homepage" })

  get("/square/new", { :controller => "calculations", :action => "square_form" })
  get("/square/results", { :controller => "calculations", :action => "square_results" })

  get("/square_root/new", { :controller => "calculations", :action => "square_root_form" })
  get("/square_root/results", { :controller => "calculations", :action => "square_root_results" })

  get("/payment/new", { :controller => "calculations", :action => "payment_form" })
  get("/payment/results", { :controller => "calculations", :action => "payment_results" })

  get("/random/new", { :controller => "calculations", :action => "random_form" })
  get("/random/results", { :controller => "calculations", :action => "random_results" })
end
