Rails.application.routes.draw do
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
    resources :all_items, only: [:index]
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
