Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'articles#index'
  get '/' => 'articles#index'
# resources便利 URL作ってくれる
  resources :articles
end
