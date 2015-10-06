Rails.application.routes.draw do

  root "welcome#index"

  get "signup" => "users#new"
  post "signup" => "users#create"

  get "login" => "sessions#new"
  post "login" => "sessions#create"
  delete "logout" => "sessions#destroy"

  get "films/index" => "films#index"
  get "films/:id" => "films#show"

  post "films/:film_id/reviews" => "reviews#create"
  delete "films/:film_id/reviews/:id" => "reviews#destroy"

  post "films/:film_id/reviews/:review_id/comments" => "comments#create"
  delete "films/:film_id/reviews/:review_id/comments/:id" => "comments#destroy"

  post "ratings" => "ratings#create"

end