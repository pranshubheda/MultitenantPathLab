class Tenant < ApplicationRecord
	after_create :add_tenant_to_apartment
	validates :name, presence: true
	validates :subdomain, presence: true
	validates :image_url, presence: true

	def self.current
	    tenant = Tenant.find_by subdomain:Apartment::Tenant.current
	    raise ::Apartment::TenantNotFound, "Unable to find tenant" unless tenant
	    tenant
  	end
 
	def switch!
		Apartment::Tenant.switch! subdomain
	end
 
  	private
	    def add_tenant_to_apartment
	      Apartment::Tenant.create(subdomain)
	    end
	 
	    def drop_tenant_from_apartment
	      Apartment::Tenant.drop(subdomain)
	    end
end
