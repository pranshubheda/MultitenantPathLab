# class SubdomainPresent
# 	def self.matches?(request)
#    	 request.subdomain.present? && !(request.subdomain.casecmp("www").zero?)
#   	end
# end

# class SubdomainBlank
#   	def self.matches?(request)
#   	  request.subdomain.blank?
#   	end
# end

Rails.application.routes.draw do

  resources :patients
	resources :customers

	devise_for :users, :path => 'user' do
  		get '/user/sign_out' => 'devise/sessions#destroy' 
	end

 	resources :patients

	root :to => "patients#new"

	get '/' => 'home#index'

	resources :tenants

	post '/tenants' => 'tenants#create'

	# get '/index' => 'devise/registrations#new',    constraints: SubdomainBlank

=begin	devise_scope :user do
		get '/sign_in' => 'devise/registrations#new',    constraints: SubdomainBlank
		get '/sign_up' => 'devise/sessions#new',    constraints: SubdomainPresent
	end
=end  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

#		get    'signin' => 'devise/sessions#new',    constraints: SubdomainPresent
