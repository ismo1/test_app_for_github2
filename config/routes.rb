CleanCode::Application.routes.draw do
  get "pages/index"
  get "pages/blog"
  get "pages/about"
  get "pages/contact"

  root :to => "pages#index"
 
  get ':not_found' => redirect('/'), :constraints => { :not_found => /.*/ }
  
end
