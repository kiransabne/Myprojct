Rails.application.routes.draw do
  resources :orders
  resources :carts
  devise_for :users


  root 'categories#index'
  resources :categories do
    resources :subcategories
  end    

  resources :subcategories do
    resources :products do
      collection do
        get :find_sub_category
      end
    end
  end

  resources :order_items do
    collection do
      get :find_total
    end
  end
end
