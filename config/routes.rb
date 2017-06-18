Rails.application.routes.draw do
  resources :food_items
  get 'menu' => 'static_pages#menu'
  get 'contact' => 'static_pages#contact'

  root 'static_pages#menu'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
