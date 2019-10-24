Rails.application.routes.draw do
  get 'welcome/index'
  
  resources :exams
  
  root 'welcome#index'
end
