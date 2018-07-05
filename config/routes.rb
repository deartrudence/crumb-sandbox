Rails.application.routes.draw do

  resources :crumb_templates
  resources :campaign_target_pages
  resources :campaign_templates
	root to: 'campaigns#index'
  resources :campaign_colors
  resources :campaign_tasks
  resources :tasks
  resources :target_pages
  resources :templates
  resources :campaigns
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
