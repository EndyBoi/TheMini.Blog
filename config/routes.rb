Rails.application.routes.draw do
  # Root 
  root 'static_pages#home'
  # Static pages
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'

end
