Rails.application.routes.draw do
  api_version(:module => "v1", :path => {:value => "v1"}, :default => true) do
    resources :book
    resources :user, except: [:new, :edit] do
      collection do
        get :search
      end
    end
  end
  mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
