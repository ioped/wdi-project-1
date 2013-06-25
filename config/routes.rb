WdiProject1::Application.routes.draw do

  ###############################
  #####     SITE ROUTES     #####
  ###############################

  put  "/login"              => "site#login"           , :as => :login
  get  "/login_form"         => "site#user_login"      , :as => :user_login
  get  "/logout"             => "site#logout"          , :as => :logout
  get  "/account"            => "users#account"
  get  "/signup"             => "site#signup"          , :as => :signup
  

  get  "/games/list"         => "site#game_list"       , :as => :game_list
  get  "/games/:id"          => "site#game_detail"     , :as => :game_detail

  get  "/welcome"            => "site#welcome_screen"
  get  "/hello"              => "site#hello_stranger"  , :as => :hello_stranger


  ###############################
  ######   USER ROUTES   ########
  ###############################

  # get     "/users"           => "users#index"    , as: :list_users
  # get     "/users/new"       => "users#new"      , as: :users
  # post    "/users"           => "users#create"   , as: :create_user
  # get     "/users/:id"       => "users#show"     , as: :user
  # get     "/users/:id/edit"  => "users#edit"     , as: :edit_user
  # put     "/users/:id"       => "users#update"
  # delete  "/users/:id"       => "users#destroy"  , as: :destroy_user

  resources :users


  ###############################
  ######    GAME ROUTES   #######
  ###############################

  # get     "/games"           => "games#index"
  # get     "/games/new"       => "games#new"      , as: :add_game
  # post    "/games"           => "games#create"   , as: :create_game
  # get     "/games/:id"       => "games#show"     , as: :show_game
  # get     "/games/:id/edit"  => "games#edit"     , as: :edit_game
  # put     "/games/:id"       => "games#update"   , as: :update_game
  # delete  "/games/:id"       => "games#destroy"  , as: :destroy_game

  resources :games


  ###############################
  ####  GAME RATING ROUTES  #####
  ###############################

  get "/game_ratings/new"
  get "/game_ratings/create"
  get "/game_ratings/edit"
  get "/game_ratings/update"


  ###############################
  ####  GAME REVIEW ROUTES  #####
  ###############################

  get "game_reviews/new"
  get "game_reviews/create"
  get "game_reviews/show"
  get "game_reviews/edit"
  get "game_reviews/update"
  get "game_reviews/destroy"


  root :to => "site#index"

end
