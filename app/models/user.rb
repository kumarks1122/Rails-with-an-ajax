class User < ActiveRecord::Base
	validates :emailid,:uniqueness=>true
	has_many :roles
	has_many :wholesales
	has_many :retails
	# has_many :wholesellers, :through => :wholesales	,:foreign_key=>"user_id"
	has_many :retailers , :through => :wholesales
	has_many :customers , :through => :retails
end
