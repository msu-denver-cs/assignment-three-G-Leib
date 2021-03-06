Rails.application.routes.draw do
  resources :static_pages
  root to: 'static_pages#home'
  devise_for :users
  resources :parts do
    get :autocomplete_part_name, on: :collection
    collection do
      get 'search'
    end
  end
  resources :cars do
    get :autocomplete_car_name, on: :collection
    collection do
      get 'search'
    end
  end
  resources :makes do
    get :autocomplete_make_name, on: :collection
    collection do
      get 'search'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
