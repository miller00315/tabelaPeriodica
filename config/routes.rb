Rails.application.routes.draw do
  get 'show_individual/index'
  get 'show_element/show'
  get 'home/index'
  
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
