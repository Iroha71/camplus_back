Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth', controllers: { registrations: 'auth/registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace 'v1' do
    resources :player do
      member do
        put :saving
      end
    end
    resources :field do
      member do
        put :increment_total_num
      end
    end
  end
end
