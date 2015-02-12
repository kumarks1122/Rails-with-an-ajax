class Retail < ActiveRecord::Base
	belongs_to :user
	belongs_to :customer, :class_name => "User", :foreign_key => "customer_id"
end
