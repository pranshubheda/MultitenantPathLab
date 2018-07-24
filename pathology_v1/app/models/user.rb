class User < ApplicationRecord
  
	# belongs_to :tenant
	
  	# Include default devise modules. Others available are
  	# :confirmable, :lockable, :timeoutable and :omniauthable

	  	validates :email,
	  :presence => true,
	  :uniqueness => {
	    :case_sensitive => false
	  } 

	  	  	validates :password,
	  :presence => true

  	devise :database_authenticatable, :registerable,
         	:recoverable, :rememberable, :trackable, :validatable
end
