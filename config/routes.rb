Rails.application.routes.draw do

  resources :questions

  get 'questions/update'

  get 'questions/edit'

  get 'questions/destroy'

  get 'questions/show'

  resources :posts

  get 'about' => 'welcome#about'

  get 'welcome/about'

  get 'welcome/contact'

  get 'welcome/faq'

  root 'welcome#index'
end
