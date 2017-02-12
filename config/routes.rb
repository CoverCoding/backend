Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :schools, only: [:index]
  get 'schools/:school_id/courses' => 'courses#index'
  # resources :courses, only: [:index]
end
