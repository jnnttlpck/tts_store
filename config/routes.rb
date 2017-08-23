Rails.application.routes.draw do

  post 'add_to_cart' => 'cart#add_to_cart'
  
  post 'order_complete' => 'cart#order_complete'

  get 'view_order' => 'cart#view_order'

  get 'checkout' => 'cart#checkout'

  root 'storefront#all_items'

  get 'categorical' => 'storefront#items_by_category'

  get 'branding' => 'storefront#items_by_brand'


  devise_for :users

  # devise_scope :user do
  #     get "/sign_in" => "devise/sessions#new" # custom path to login/sign_in
  #     get "/sign_up" => "devise/registrations#new" # custom path to sign_up/registration
  #     delete "/sign_out" => "devise/sessions#destroy"
  #   end

  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
