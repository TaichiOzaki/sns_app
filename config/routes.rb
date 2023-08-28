Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get '/', to: 'posts#index', as: 'index_post'
    # PostsController
  get 'posts/new', to: 'posts#new', as: 'new_post'
  post 'posts/new', to: 'posts#create', as: 'create_post'
  
  get 'posts/edit/:id', to:'post#edit', as: 'edit_post'
  post 'posts/edit/:id', to: 'posts#update', as: 'update_post'
  delete 'posts/destroy/:id', to: 'posts#destroy', as: 'destroy_post'
  
   # TopicsController
  get 'topics/new', to: 'topics#new', as: 'new_topics'
  post 'topics/new', to: 'topics#edit', as: 'edi_post'
  get 'topics/edit', to: 'topics#edit', as: 'edit_topics'
  post 'topics/edit', to: 'topics#update',as: 'update_post'
end
