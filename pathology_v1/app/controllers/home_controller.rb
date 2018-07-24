class SubdomainPresent
	def self.matches?(request)
   	 request.subdomain.present? && !(request.subdomain.casecmp("www").zero?)
  	end
end

class SubdomainBlank
  	def self.matches?(request)
  	  request.subdomain.blank?
  	end
end

class HomeController < ApplicationController

	def index

	if SubdomainPresent.matches? request
		redirect_to "/user/sign_in"
	else
		render :template => "tenants/new"
	end
	end

	def show
		 redirect_to "/user/sign_up"
	end
end
