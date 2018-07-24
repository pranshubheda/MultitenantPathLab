module ApplicationHelper
	def background_image_url
		if SubdomainHelper.matches? request
			Tenant.current.image_url
		else
			"http://c14608526.r26.cf2.rackcdn.com/36613F37-AEF9-4791-A8C0-DBCA46B2335C.jpg"
		end
	end
end
