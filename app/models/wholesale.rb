class Wholesale < ActiveRecord::Base
	belongs_to :user
	belongs_to :retailer, :class_name => "User" ,:foreign_key => "retailer_id"
	belongs_to :wholeseller, :class_name=> "User",:foreign_key => "user_id"
end
