Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'articles#index'

  get '/' => 'articles#index'

# resources便利 URL作ってくれる
  resources :articles do
    resources :comments, only: [:new, :create]
  end
# articleがあって、その下にcommentsがあるって関係のときは、上記のように入れ子構造に
end
