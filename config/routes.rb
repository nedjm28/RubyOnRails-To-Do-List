# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
#
#
Rails.application.routes.draw do
  resources :users
  #get 'manage/index'
  #match 'manage/index', :to=> 'manage#index', :via=> get
   root 'manage#index' #this for by default get first page
   match ':controller(/:action(/:id))', :via=> :get #this for splite the url to controller and def of this controller
   get 'manage/home'





end
