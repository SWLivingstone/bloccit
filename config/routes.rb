Rails.application.routes.draw do

  resources :posts, :advertisements

  get 'advertisements/show'

  get 'about' => 'welcome#about'

  get 'welcome/about'

  get 'welcome/contact'

  get 'welcome/faq'

  root 'welcome#index'
end
