TGITRuby::Application.routes.draw do

  devise_for :teams

  resources :questions
  match "questions/:attempted/solve" => "questions#solve", :as => :questions_solve, :via => :get
  match "questions/:attempted/check" => "questions#check", :as => :questions_check, :via => :post

  match "teams" => "teams#create", :as => :teams, :via => :post
  match "completed" => "home#completed", :as => :completed, :via => :get

  match "projects/:project_name/developers/:dev_id/tasks/:task_id" => "questions#route_get_test", :via => :get

  root :to => "home#index"
end
