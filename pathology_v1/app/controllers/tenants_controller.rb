class TenantsController < ApplicationController

  	def index
  	end

	def new 
	end

	def create		

		@tenant = Tenant.new(tenant_params)
		if @tenant.save!
			redirect_to @tenant
			@tenant.errors.messages
		else
			redirect_to root
		end
		# @tenant = Tenant.new(params[:subdomain])
		# redirect_to "www.google.com"
=begin	    respond_to do |format|
			if @tenant.save
				format.html { redirect_to @tenant, notice: 'tenant was successfully created.' }
				format.json { render action: 'show', status: :created, location: @tenant }
			else
				format.html { render action: 'new' }
				format.json { render json: @tenant.errors, status: :unprocessable_entity }
			end
=end
	end

	private
            def tenant_params
                        params.require(:tenant).permit(:name, :subdomain, :image_url, :tenant_id)
            end

	def show
	end

end
