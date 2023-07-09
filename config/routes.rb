Rails.application.routes.draw do
  root to: 'homes#top'
  resources :books, only: [:new, :create, :destroy, :index] do
    collection do
      get 'search'
    end
  end
  get 'about' => 'homes#about'
  get 'tagsearch' => 'searches#tagsearch'
  get 'check' => 'searches#check'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
