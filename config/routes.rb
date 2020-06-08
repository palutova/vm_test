Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  post '/add-player-ajax/' => 'home#add_new_player', as: :add_player_ajax
  post '/check-result-ajax/' => 'home#check_result', as: :check_result_ajax
  match '/top-five-ajax/' => 'home#top_five', as: :top_five_ajax, via: [:get, :post]
end
