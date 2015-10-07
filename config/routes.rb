Rails.application.routes.draw do

# Good work on cleaning this up
  root "films#index"

  get "signup" => "users#new", as: "new_user"
  post "signup" => "users#create"

  get "login" => "sessions#new", as: "login"
  post "login" => "sessions#create"
  get "logout" => "sessions#destroy"

  resources :films, only: [:index, :show] do
    resources :reviews, only: [:create, :destroy] do
      resources :comments, only: [:create, :destroy]
    end
  end

  resources :ratings, only: :create
end



  # get "films" => "films#index"
  # get "films/:id" => "films#show", as: "film"

  # post "films/:film_id/reviews" => "reviews#create"
  # delete "films/:film_id/reviews/:id" => "reviews#destroy"

  # post "films/:film_id/reviews/:review_id/comments" => "comments#create"
  # delete "films/:film_id/reviews/:review_id/comments/:id" => "comments#destroy"

  # post "ratings" => "ratings#create"

