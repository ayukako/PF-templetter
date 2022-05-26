Rails.application.routes.draw do
  namespace :public do
    get 'customers/show'
    get 'customers/unsubscribe'
    get 'customers/withdraw'
  end
  namespace :public do
    get 'homes/top'
  end
  namespace :public do
    get 'items_choices/index'
  end
  namespace :public do
    get 'items/new'
    get 'items/show'
    get 'items/edit'
    get 'items/update'
    get 'items/create'
    get 'items/destroy_all'
  end
  namespace :public do
    get 'orders/new'
    get 'orders/confirm'
    get 'orders/thanks'
    get 'orders/create'
    get 'orders/show'
  end
  namespace :admin do
    get 'papers/new'
    get 'papers/show'
    get 'papers/create'
    get 'papers/destroy'
  end
  namespace :admin do
    get 'orders/index'
    get 'orders/show'
    get 'orders/update'
  end
  namespace :admin do
    get 'items/index'
  end
  namespace :admin do
    get 'homes/top'
  end
  namespace :admin do
    get 'fonts/new'
    get 'fonts/create'
    get 'fonts/show'
    get 'fonts/destroy'
  end
  namespace :admin do
    get 'envelopes/new'
    get 'envelopes/create'
    get 'envelopes/show'
    get 'envelopes/destroy'
  end
  namespace :admin do
    get 'articles/new'
    get 'articles/create'
    get 'articles/show'
    get 'articles/edit'
    get 'articles/destroy'
    get 'articles/update'
  end
# 顧客用
# URL /customers/sign_in ...
devise_for :customers,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

# 管理者用
# URL /admin/sign_in ...
devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :public do
    get 'homes/top'
   end

  namespace :admin do
    resources :items, only: [:index]
    resources :envelopes, except:[:edit, :update, :index]
    resources :papers, except: [:edit, :update, :index]
    resources :fonts, except: [:edit, :update, :index]
    resources :articles, except: [:index]
    resources :orders, only: [:show, :update]
  end
  namespace :admin do
    get 'homes/top'
    root to: "homes#top"
  end

  namespace :public do
    resource :items, except: [:index, :destroy] do
      collection do
        get :destroy_all
      end
    end
    resource :customers, only: [:show] do
      collection do
        get :unsubscribe
        patch :withdraw
      end
    end
    resources :orders, only: [:new, :create, :show] do
      collection do
        post :confirm
        get :thanks
      end
    end
    resources :items_choices, only: [:index]
  end


end
