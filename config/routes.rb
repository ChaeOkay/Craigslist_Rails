CraiglistRails::Application.routes.draw do

  resources :categories, only: [:index, :show] do
    resources :posts
  end

end
